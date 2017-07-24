/***********************************************************************************************************************
 Copyright (c) 2016, Imagination Technologies Limited and/or its affiliated group companies.
 All rights reserved.

 Redistribution and use in source and binary forms, with or without modification, are permitted provided that the
 following conditions are met:
     1. Redistributions of source code must retain the above copyright notice, this list of conditions and the
        following disclaimer.
     2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the
        following disclaimer in the documentation and/or other materials provided with the distribution.
     3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote
        products derived from this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
 INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
 DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
 SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
 WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE 
 USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 ***********************************************************************************************************************/

/*! \file lwm2m_client.c
 *  \brief Awa static client - supports LWM2M resources in Wifire after boot strap to a management server
 */

#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>

#include "creator/core/creator_threading.h"
#include "creator/core/creator_debug.h"
#include "creator/creator_console.h"
#include "awa\static.h"

#include "config_store.h"
#include "app_config.h"
#include "led_object.h"
#include "button_object.h"
#include "temperature_object.h"
#include "analog_input_object.h"
#include "execute_command_object.h"
#include "ui_control.h"
#include "app_client.h"

static CreatorThread _ClientThread;
static AwaStaticClient * _AwaClient;
static bool _Terminate;
static bool _ClientClosed;
static bool _ClientRegistered;

#define LOCAL_PORT  6000
#define WAIT_SHUTDOWN_TIME 100      // 1s in 10ms units
#define DEVICE_INSTANCES 1

#define LABEL_SIZE 64

typedef struct      // urn:oma:lwm2m:oma:3
{
    char Manufacturer[LABEL_SIZE];
    char SerialNumber[LABEL_SIZE];
    // TODO - Reboot Execute
    char DeviceType[LABEL_SIZE];
    char SoftwareVersion[LABEL_SIZE];
} DeviceObject;

static DeviceObject device[DEVICE_INSTANCES];

static void ClientProcess(CreatorThread thread, void *context);
static void DeviceObject_Create(AwaStaticClient * awaClient);


//const unsigned char clientCert[] = {
// 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x42, 0x45, 0x47, 0x49, 0x4E, 0x20, 0x45, 0x43, 0x20, 0x50, 0x52,
// 0x49, 0x56, 0x41, 0x54, 0x45, 0x20, 0x4B, 0x45, 0x59, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x0A, 0x4D,
// 0x48, 0x63, 0x43, 0x41, 0x51, 0x45, 0x45, 0x49, 0x4E, 0x4A, 0x52, 0x73, 0x44, 0x45, 0x7A, 0x4E,
// 0x64, 0x6E, 0x32, 0x6C, 0x53, 0x31, 0x35, 0x6A, 0x78, 0x2F, 0x65, 0x2B, 0x33, 0x38, 0x70, 0x68,
// 0x68, 0x70, 0x72, 0x55, 0x5A, 0x4B, 0x34, 0x78, 0x47, 0x66, 0x5A, 0x79, 0x63, 0x2B, 0x57, 0x4C,
// 0x52, 0x66, 0x64, 0x6F, 0x41, 0x6F, 0x47, 0x43, 0x43, 0x71, 0x47, 0x53, 0x4D, 0x34, 0x39, 0x0A,
// 0x41, 0x77, 0x45, 0x48, 0x6F, 0x55, 0x51, 0x44, 0x51, 0x67, 0x41, 0x45, 0x38, 0x67, 0x66, 0x66,
// 0x70, 0x32, 0x72, 0x31, 0x6E, 0x6F, 0x71, 0x39, 0x75, 0x68, 0x58, 0x53, 0x2B, 0x41, 0x48, 0x30,
// 0x66, 0x76, 0x4B, 0x30, 0x54, 0x45, 0x76, 0x4F, 0x5A, 0x2B, 0x70, 0x4E, 0x4A, 0x62, 0x52, 0x35,
// 0x5A, 0x37, 0x2B, 0x48, 0x56, 0x71, 0x4B, 0x74, 0x6E, 0x38, 0x4F, 0x42, 0x34, 0x58, 0x33, 0x51,
// 0x0A, 0x53, 0x51, 0x79, 0x75, 0x52, 0x6A, 0x32, 0x61, 0x4B, 0x7A, 0x36, 0x74, 0x66, 0x53, 0x51,
// 0x58, 0x44, 0x38, 0x38, 0x32, 0x34, 0x75, 0x46, 0x45, 0x30, 0x58, 0x66, 0x36, 0x6C, 0x78, 0x39,
// 0x4C, 0x41, 0x41, 0x3D, 0x3D, 0x0A, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x45, 0x4E, 0x44, 0x20, 0x45,
// 0x43, 0x20, 0x50, 0x52, 0x49, 0x56, 0x41, 0x54, 0x45, 0x20, 0x4B, 0x45, 0x59, 0x2D, 0x2D, 0x2D,
// 0x2D, 0x2D, 0x0A, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x42, 0x45, 0x47, 0x49, 0x4E, 0x20, 0x50, 0x55,
// 0x42, 0x4C, 0x49, 0x43, 0x20, 0x4B, 0x45, 0x59, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x0A, 0x4D, 0x46,
// 0x6B, 0x77, 0x45, 0x77, 0x59, 0x48, 0x4B, 0x6F, 0x5A, 0x49, 0x7A, 0x6A, 0x30, 0x43, 0x41, 0x51,
// 0x59, 0x49, 0x4B, 0x6F, 0x5A, 0x49, 0x7A, 0x6A, 0x30, 0x44, 0x41, 0x51, 0x63, 0x44, 0x51, 0x67,
// 0x41, 0x45, 0x38, 0x67, 0x66, 0x66, 0x70, 0x32, 0x72, 0x31, 0x6E, 0x6F, 0x71, 0x39, 0x75, 0x68,
// 0x58, 0x53, 0x2B, 0x41, 0x48, 0x30, 0x66, 0x76, 0x4B, 0x30, 0x54, 0x45, 0x76, 0x4F, 0x0A, 0x5A,
// 0x2B, 0x70, 0x4E, 0x4A, 0x62, 0x52, 0x35, 0x5A, 0x37, 0x2B, 0x48, 0x56, 0x71, 0x4B, 0x74, 0x6E,
// 0x38, 0x4F, 0x42, 0x34, 0x58, 0x33, 0x51, 0x53, 0x51, 0x79, 0x75, 0x52, 0x6A, 0x32, 0x61, 0x4B,
// 0x7A, 0x36, 0x74, 0x66, 0x53, 0x51, 0x58, 0x44, 0x38, 0x38, 0x32, 0x34, 0x75, 0x46, 0x45, 0x30,
// 0x58, 0x66, 0x36, 0x6C, 0x78, 0x39, 0x4C, 0x41, 0x41, 0x3D, 0x3D, 0x0A, 0x2D, 0x2D, 0x2D, 0x2D,
// 0x2D, 0x45, 0x4E, 0x44, 0x20, 0x50, 0x55, 0x42, 0x4C, 0x49, 0x43, 0x20, 0x4B, 0x45, 0x59, 0x2D,
// 0x2D, 0x2D, 0x2D, 0x2D, 0x0A, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x42, 0x45, 0x47, 0x49, 0x4E, 0x20,
// 0x43, 0x45, 0x52, 0x54, 0x49, 0x46, 0x49, 0x43, 0x41, 0x54, 0x45, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D,
// 0x0A, 0x4D, 0x49, 0x49, 0x43, 0x50, 0x7A, 0x43, 0x43, 0x41, 0x65, 0x57, 0x67, 0x41, 0x77, 0x49,
// 0x42, 0x41, 0x67, 0x49, 0x49, 0x55, 0x75, 0x4C, 0x62, 0x68, 0x74, 0x6B, 0x74, 0x70, 0x4B, 0x73,
// 0x77, 0x43, 0x67, 0x59, 0x49, 0x4B, 0x6F, 0x5A, 0x49, 0x7A, 0x6A, 0x30, 0x45, 0x41, 0x77, 0x49,
// 0x77, 0x67, 0x59, 0x34, 0x78, 0x4A, 0x44, 0x41, 0x69, 0x42, 0x67, 0x4E, 0x56, 0x42, 0x41, 0x4D,
// 0x4D, 0x0A, 0x47, 0x30, 0x6C, 0x74, 0x59, 0x57, 0x64, 0x70, 0x62, 0x6D, 0x46, 0x30, 0x61, 0x57,
// 0x39, 0x75, 0x49, 0x46, 0x52, 0x6C, 0x59, 0x32, 0x68, 0x75, 0x62, 0x32, 0x78, 0x76, 0x5A, 0x32,
// 0x6C, 0x6C, 0x63, 0x79, 0x42, 0x44, 0x51, 0x54, 0x45, 0x70, 0x4D, 0x43, 0x63, 0x47, 0x41, 0x31,
// 0x55, 0x45, 0x43, 0x67, 0x77, 0x67, 0x53, 0x57, 0x31, 0x68, 0x5A, 0x32, 0x6C, 0x75, 0x59, 0x58,
// 0x52, 0x70, 0x0A, 0x62, 0x32, 0x34, 0x67, 0x56, 0x47, 0x56, 0x6A, 0x61, 0x47, 0x35, 0x76, 0x62,
// 0x47, 0x39, 0x6E, 0x61, 0x57, 0x56, 0x7A, 0x49, 0x45, 0x78, 0x70, 0x62, 0x57, 0x6C, 0x30, 0x5A,
// 0x57, 0x51, 0x78, 0x46, 0x6A, 0x41, 0x55, 0x42, 0x67, 0x4E, 0x56, 0x42, 0x41, 0x63, 0x4D, 0x44,
// 0x55, 0x74, 0x70, 0x62, 0x6D, 0x64, 0x7A, 0x49, 0x45, 0x78, 0x68, 0x62, 0x6D, 0x64, 0x73, 0x5A,
// 0x58, 0x6B, 0x78, 0x0A, 0x46, 0x6A, 0x41, 0x55, 0x42, 0x67, 0x4E, 0x56, 0x42, 0x41, 0x67, 0x4D,
// 0x44, 0x55, 0x68, 0x6C, 0x63, 0x6E, 0x52, 0x6D, 0x62, 0x33, 0x4A, 0x6B, 0x63, 0x32, 0x68, 0x70,
// 0x63, 0x6D, 0x55, 0x78, 0x43, 0x7A, 0x41, 0x4A, 0x42, 0x67, 0x4E, 0x56, 0x42, 0x41, 0x59, 0x54,
// 0x41, 0x6B, 0x64, 0x43, 0x4D, 0x42, 0x34, 0x58, 0x44, 0x54, 0x45, 0x32, 0x4D, 0x44, 0x59, 0x77,
// 0x4E, 0x7A, 0x41, 0x77, 0x0A, 0x4D, 0x44, 0x41, 0x77, 0x4D, 0x46, 0x6F, 0x58, 0x44, 0x54, 0x45,
// 0x35, 0x4D, 0x44, 0x59, 0x77, 0x4E, 0x7A, 0x41, 0x77, 0x4D, 0x44, 0x41, 0x77, 0x4D, 0x46, 0x6F,
// 0x77, 0x4F, 0x7A, 0x45, 0x74, 0x4D, 0x43, 0x73, 0x47, 0x41, 0x31, 0x55, 0x45, 0x41, 0x77, 0x77,
// 0x6B, 0x59, 0x7A, 0x5A, 0x6D, 0x59, 0x6A, 0x59, 0x30, 0x4D, 0x47, 0x51, 0x74, 0x5A, 0x57, 0x5A,
// 0x6D, 0x4F, 0x53, 0x30, 0x30, 0x0A, 0x4F, 0x57, 0x52, 0x6C, 0x4C, 0x57, 0x45, 0x32, 0x59, 0x7A,
// 0x67, 0x74, 0x4D, 0x6A, 0x6C, 0x6A, 0x59, 0x54, 0x68, 0x69, 0x4D, 0x6A, 0x63, 0x78, 0x59, 0x54,
// 0x4D, 0x33, 0x4D, 0x51, 0x6F, 0x77, 0x43, 0x41, 0x59, 0x44, 0x56, 0x51, 0x51, 0x4B, 0x44, 0x41,
// 0x45, 0x78, 0x4D, 0x46, 0x6B, 0x77, 0x45, 0x77, 0x59, 0x48, 0x4B, 0x6F, 0x5A, 0x49, 0x7A, 0x6A,
// 0x30, 0x43, 0x41, 0x51, 0x59, 0x49, 0x0A, 0x4B, 0x6F, 0x5A, 0x49, 0x7A, 0x6A, 0x30, 0x44, 0x41,
// 0x51, 0x63, 0x44, 0x51, 0x67, 0x41, 0x45, 0x38, 0x67, 0x66, 0x66, 0x70, 0x32, 0x72, 0x31, 0x6E,
// 0x6F, 0x71, 0x39, 0x75, 0x68, 0x58, 0x53, 0x2B, 0x41, 0x48, 0x30, 0x66, 0x76, 0x4B, 0x30, 0x54,
// 0x45, 0x76, 0x4F, 0x5A, 0x2B, 0x70, 0x4E, 0x4A, 0x62, 0x52, 0x35, 0x5A, 0x37, 0x2B, 0x48, 0x56,
// 0x71, 0x4B, 0x74, 0x6E, 0x38, 0x4F, 0x42, 0x0A, 0x34, 0x58, 0x33, 0x51, 0x53, 0x51, 0x79, 0x75,
// 0x52, 0x6A, 0x32, 0x61, 0x4B, 0x7A, 0x36, 0x74, 0x66, 0x53, 0x51, 0x58, 0x44, 0x38, 0x38, 0x32,
// 0x34, 0x75, 0x46, 0x45, 0x30, 0x58, 0x66, 0x36, 0x6C, 0x78, 0x39, 0x4C, 0x41, 0x4B, 0x4E, 0x2F,
// 0x4D, 0x48, 0x30, 0x77, 0x44, 0x41, 0x59, 0x44, 0x56, 0x52, 0x30, 0x54, 0x41, 0x51, 0x48, 0x2F,
// 0x42, 0x41, 0x49, 0x77, 0x41, 0x44, 0x41, 0x4F, 0x0A, 0x42, 0x67, 0x4E, 0x56, 0x48, 0x51, 0x38,
// 0x42, 0x41, 0x66, 0x38, 0x45, 0x42, 0x41, 0x4D, 0x43, 0x42, 0x61, 0x41, 0x77, 0x48, 0x51, 0x59,
// 0x44, 0x56, 0x52, 0x30, 0x6C, 0x42, 0x42, 0x59, 0x77, 0x46, 0x41, 0x59, 0x49, 0x4B, 0x77, 0x59,
// 0x42, 0x42, 0x51, 0x55, 0x48, 0x41, 0x77, 0x45, 0x47, 0x43, 0x43, 0x73, 0x47, 0x41, 0x51, 0x55,
// 0x46, 0x42, 0x77, 0x4D, 0x43, 0x4D, 0x42, 0x30, 0x47, 0x0A, 0x41, 0x31, 0x55, 0x64, 0x44, 0x67,
// 0x51, 0x57, 0x42, 0x42, 0x52, 0x4F, 0x72, 0x4F, 0x77, 0x66, 0x79, 0x66, 0x36, 0x61, 0x43, 0x34,
// 0x43, 0x59, 0x4E, 0x46, 0x4B, 0x70, 0x75, 0x7A, 0x2F, 0x34, 0x34, 0x7A, 0x52, 0x6B, 0x38, 0x6A,
// 0x41, 0x66, 0x42, 0x67, 0x4E, 0x56, 0x48, 0x53, 0x4D, 0x45, 0x47, 0x44, 0x41, 0x57, 0x67, 0x42,
// 0x54, 0x4D, 0x37, 0x4C, 0x39, 0x4E, 0x33, 0x72, 0x4D, 0x42, 0x0A, 0x62, 0x38, 0x6D, 0x66, 0x64,
// 0x64, 0x4D, 0x31, 0x4F, 0x5A, 0x4E, 0x57, 0x49, 0x4D, 0x39, 0x46, 0x2F, 0x7A, 0x41, 0x4B, 0x42,
// 0x67, 0x67, 0x71, 0x68, 0x6B, 0x6A, 0x4F, 0x50, 0x51, 0x51, 0x44, 0x41, 0x67, 0x4E, 0x49, 0x41,
// 0x44, 0x42, 0x46, 0x41, 0x69, 0x45, 0x41, 0x73, 0x39, 0x79, 0x55, 0x64, 0x58, 0x4D, 0x4B, 0x4D,
// 0x4D, 0x76, 0x59, 0x69, 0x39, 0x76, 0x4E, 0x45, 0x75, 0x33, 0x2F, 0x0A, 0x76, 0x32, 0x55, 0x4D,
// 0x51, 0x77, 0x6E, 0x4A, 0x6C, 0x66, 0x30, 0x32, 0x32, 0x58, 0x61, 0x79, 0x69, 0x76, 0x34, 0x37,
// 0x50, 0x57, 0x63, 0x43, 0x49, 0x45, 0x77, 0x56, 0x68, 0x74, 0x6D, 0x58, 0x67, 0x56, 0x64, 0x6D,
// 0x68, 0x6D, 0x56, 0x67, 0x50, 0x78, 0x38, 0x39, 0x6F, 0x78, 0x79, 0x49, 0x5A, 0x43, 0x30, 0x2B,
// 0x4C, 0x66, 0x74, 0x61, 0x6F, 0x65, 0x71, 0x45, 0x4A, 0x68, 0x78, 0x6B, 0x0A, 0x46, 0x70, 0x51,
// 0x4D, 0x0A, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x45, 0x4E, 0x44, 0x20, 0x43, 0x45, 0x52, 0x54, 0x49,
// 0x46, 0x49, 0x43, 0x41, 0x54, 0x45, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x0A, 0x0A,
//};

//const char * testIdentity = "EdcIFtDcn0WyHyevJuzeDw";
//const uint8_t testKey[] = {
//    0x72, 0xDB, 0xF5, 0x15, 0x6A, 0x07, 0x26, 0x36, 0xC5, 0xF7, 0x90, 0x67, 0x1D, 0xB7, 0x75, 0x0B, 0xAD, 0xF4, 0xEF, 0x1C, 0x18, 0x93, 0xA4, 0x1A, 0x4E, 0xAD, 0x60, 0xA9, 0x2B, 0xE8, 0x20, 0x79
//};

void Client_Initialise(void)
{
    _Terminate = false;
    _ClientClosed = false;
    _ClientRegistered = false;
    CreatorLogLevel logLevel = ConfigStore_GetLoggingLevel();
    
    Creator_Log(CreatorLogLevel_Info, "Client init started");
    _AwaClient = AwaStaticClient_New();

    if (logLevel == CreatorLogLevel_Debug)
        Client_SetLogLevel(CreatorLogLevel_Info);   // reduce logging during startup
    else
        Client_SetLogLevel(logLevel);
    
    AwaStaticClient_SetEndPointName(_AwaClient, ConfigStore_GetDeviceName());
    AwaStaticClient_SetBootstrapServerURI(_AwaClient, ConfigStore_GetBootstrapURL());
    AwaStaticClient_SetCoAPListenAddressPort(_AwaClient, "0.0.0.0", LOCAL_PORT);
    AwaStaticClient_Init(_AwaClient);

    if (ConfigStore_GetSecurityMode() == ServerSecurityMode_Cert)
    {
        const char *clientCert = ConfigStore_GetCertificate();
        AwaStaticClient_SetCertificate(_AwaClient, clientCert, sizeof(clientCert), AwaCertificateFormat_PEM);
    }
    
    if (ConfigStore_GetSecurityMode() == ServerSecurityMode_PSK)
    {
        //coap_SetPSK(testIdentity, testKey, sizeof(testKey));
        AwaStaticClient_SetPSK(_AwaClient, ConfigStore_GetPublicKey(), ConfigStore_GetPrivateKey(), (int)ConfigStore_GetPrivateKeyLength());
    }

    // Create resources
    DeviceObject_Create(_AwaClient);
    LedObject_Create(_AwaClient);
    ButtonObject_Create(_AwaClient);
    TemperatureObject_Create(_AwaClient);
    ExecuteCommandObject_Create(_AwaClient);
     // Add other object creation code here
    
    if (logLevel == CreatorLogLevel_Debug)
        Client_SetLogLevel(logLevel);
    Creator_Log(CreatorLogLevel_Info, "Client init done");
    _ClientThread = CreatorThread_New("Lwm2mClient", 1, 8192, ClientProcess, NULL);
}

void Client_Shutdown(void)
{
    _Terminate = true;
    if (_ClientThread)
    {
        // TODO - app call shutdown
        int waitTime = WAIT_SHUTDOWN_TIME;
        while (!_ClientClosed && waitTime > 0)
        {
            CreatorThread_SleepMilliseconds(NULL, 10);
            waitTime--;
        }
        CreatorThread_Join(_ClientThread);     // Beware join ignored for FreeRTOS. Free too soon could assert before reset
        CreatorThread_Free(&_ClientThread);
    }
}

void Client_ResetStatistics(void)
{
    ButtonObject_ResetStatistics();
    TemperatureObject_ResetStatistics();
    ExecuteCommandObject_ResetStatistics();
    // Call statistics reset code here
}

static void UpdateResources(AwaStaticClient * awaClient)
{
    LedObject_Update(awaClient);
    ButtonObject_Update(awaClient);
    TemperatureObject_Update(awaClient);
    // Add other object update code here
    
    // Update connection status
    AwaClientRegistrationStatus status = AwaStaticClient_GetRegistrationStatus(awaClient);
    bool registered = (status == AwaClientRegistrationStatus_Registered);
    if (_ClientRegistered != registered)
    {
        if (registered)
        {
            UIControl_SetUIState(AppUIState_AppConnectedToServer);
            LedObject_Refresh();
        }
        else
            UIControl_SetUIState(AppUIState_AppInitConnectingToServer);
        _ClientRegistered = registered;
    }
}

static void ClientProcess(CreatorThread thread, void *context)
{
    AppConfig_SetDeviceOnline(true);
    while (!_Terminate)
    {
        AwaStaticClient_Process(_AwaClient);
        UpdateResources(_AwaClient);
        CreatorThread_SleepMilliseconds(NULL, 10);
    }
    AwaStaticClient_Free(&_AwaClient);
    LedObject_Close();
    Creator_Log(CreatorLogLevel_Warning, "Client closed");
    CreatorThread_SleepMilliseconds(NULL, 10);  // wait to send unregister
    _ClientClosed = true;
}

static void DeviceObject_Create(AwaStaticClient * awaClient)
{
    char softwareVersion[LABEL_SIZE];
    char serialNumber[17];
    bool validSerialNumber;

    // Define resources
    AwaStaticClient_DefineObject(awaClient, 3, "Device", 0, DEVICE_INSTANCES);
    AwaStaticClient_DefineResource(awaClient, 3, 0, "Manufacturer", AwaResourceType_String, 0, 1, AwaResourceOperations_ReadOnly);
    AwaStaticClient_SetResourceStorageWithPointer(awaClient, 3, 0, &device[0].Manufacturer, sizeof(device[0].Manufacturer), sizeof(device[0]));
    AwaStaticClient_DefineResource(awaClient, 3, 2, "SerialNumber", AwaResourceType_String, 0, 1, AwaResourceOperations_ReadOnly);
    AwaStaticClient_SetResourceStorageWithPointer(awaClient, 3, 2, &device[0].SerialNumber, sizeof(device[0].SerialNumber), sizeof(device[0]));
    AwaStaticClient_DefineResource(awaClient, 3, 17, "DeviceType", AwaResourceType_String, 0, 1, AwaResourceOperations_ReadOnly);
    AwaStaticClient_SetResourceStorageWithPointer(awaClient, 3, 17, &device[0].DeviceType, sizeof(device[0].DeviceType), sizeof(device[0]));
    AwaStaticClient_DefineResource(awaClient, 3, 19, "SoftwareVersion", AwaResourceType_String, 0, 1, AwaResourceOperations_ReadOnly);
    AwaStaticClient_SetResourceStorageWithPointer(awaClient, 3, 19, &device[0].SoftwareVersion, sizeof(device[0].SoftwareVersion), sizeof(device[0]));

    // Get initial values
    AppInfo *appInfo = AppConfig_GetAppInfo();
    snprintf(softwareVersion, LABEL_SIZE, "%s (%s)", appInfo->ApplicationVersion, appInfo->ApplicationVersionDate);
    memset(serialNumber, 0, sizeof(serialNumber));
    validSerialNumber = DeviceSerial_GetCpuSerialNumberHexString(serialNumber, 17);

    // Set initial values
    int instance = 0;
    AwaStaticClient_CreateObjectInstance(awaClient, 3, instance);
    AwaStaticClient_CreateResource(awaClient, 3, instance, 0);
    strncpy(device[instance].Manufacturer, "Imagination Technologies Ltd", LABEL_SIZE);
    if (validSerialNumber)
    {
        AwaStaticClient_CreateResource(awaClient, 3, instance, 2);
        strncpy(device[instance].SerialNumber, serialNumber, LABEL_SIZE);
    }
    AwaStaticClient_CreateResource(awaClient, 3, instance, 17);
    strncpy(device[instance].DeviceType, ConfigStore_GetDeviceType(), LABEL_SIZE);
    AwaStaticClient_CreateResource(awaClient, 3, instance, 19);
    strncpy(device[instance].SoftwareVersion, softwareVersion, LABEL_SIZE);
}

void Client_SetLogLevel(CreatorLogLevel level)
{
    switch (level) {
        case CreatorLogLevel_Error:
            AwaStaticClient_SetLogLevel(AwaLogLevel_Error);
            break;
        case CreatorLogLevel_Warning:
            AwaStaticClient_SetLogLevel(AwaLogLevel_Warning);
            break;
        case CreatorLogLevel_Info:
            AwaStaticClient_SetLogLevel(AwaLogLevel_Verbose);
            break;
        case CreatorLogLevel_Debug:
            AwaStaticClient_SetLogLevel(AwaLogLevel_Debug);
            break;
        default:
            CreatorConsole_Printf("Unknown LogLevel: %d\r\n", level);
            break;
    }
}

int random()
{
    // Support random numbers for Awa static client
    return Creator_GetRandom();
}
