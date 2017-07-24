#ifndef USER_H
#define USER_H

#include "FreeRTOS.h"
#include "semphr.h"

/******************************************************************************/
/* User Level #define Macros                                                  */
/******************************************************************************/

// Add I/O name macros here
#define LD1_PORT_BIT        LATGbits.LATG6
#define LD2_PORT_BIT        LATDbits.LATD4
#define LD3_PORT_BIT        LATBbits.LATB11
#define LD4_PORT_BIT        LATGbits.LATG15

#define BTN1_PORT_BIT       PORTAbits.RA5
#define BTN2_PORT_BIT       PORTAbits.RA4

// Basic I/O Shield 
#define BIOS_LD1_PORT_BIT        LATEbits.LATE0
#define BIOS_LD2_PORT_BIT        LATEbits.LATE1
#define BIOS_LD3_PORT_BIT        LATEbits.LATE2
#define BIOS_LD4_PORT_BIT        LATEbits.LATE3
#define BIOS_LD5_PORT_BIT        LATEbits.LATE4
#define BIOS_LD6_PORT_BIT        LATEbits.LATE5
#define BIOS_LD7_PORT_BIT        LATEbits.LATE6
#define BIOS_LD8_PORT_BIT        LATEbits.LATE7

#define BIOS_BTN1_PORT_BIT       PORTGbits.RG7
#define BIOS_BTN2_PORT_BIT       PORTDbits.RD5
#define BIOS_BTN3_PORT_BIT       PORTFbits.RF1
#define BIOS_BTN4_PORT_BIT       PORTAbits.RA2


/******************************************************************************/
/* User Function Prototypes                                                   */
/******************************************************************************/
void InitApp(void);         /* I/O and Peripheral Initialization */

void Task1 ( void * pvParameters);
void Task2 ( void * pvParameters);

void DelayMs(int t);

// TODO: Declare function ClockTask here
// TODO: Declare function SerialInTask here
// TODO: Declare semaphore handle here

#endif // USER_H