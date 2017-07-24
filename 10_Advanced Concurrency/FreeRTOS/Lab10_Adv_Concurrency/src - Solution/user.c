// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************
#include <xc.h>          /* Defines special function registers, CP0 regs  */
#include <stdint.h>          /* For uint32_t definition                       */
#include <sys/attribs.h>

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

#include "user.h"            /* variables/params used by user.c               */
#include "OLED.h"
#include "OledChar.h"
#include "OledGrph.h"
#include "UART.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************


/******************************************************************************/
/* User Functions                                                             */

/******************************************************************************/

void InitGPIO(void) {
    // LED output
    // Disable analog mode for G6
    ANSELGbits.ANSG6 = 0;
    // Set direction to output for G6
    TRISGbits.TRISG6 = 0;

    // Initialize outputs for other LEDs
    ANSELBbits.ANSB11 = 0;
    ANSELGbits.ANSG15 = 0;

    TRISBbits.TRISB11 = 0;
    TRISGbits.TRISG15 = 0;
    TRISDbits.TRISD4 = 0;

    // Turn off LEDs for initialization
    LD1_PORT_BIT = 0;
    LD2_PORT_BIT = 0;
    LD3_PORT_BIT = 0;
    LD4_PORT_BIT = 0;

    // Initilalize input for BTN1
    // Disable analog mode
    ANSELAbits.ANSA5 = 0;
    // Set direction to input
    TRISAbits.TRISA5 = 1;

    // Initialize input for BTN2
    TRISAbits.TRISA4 = 1;
}

void InitBIOSGPIO(void) {
    /* Setup functionality and port direction */
    // LED outputs
    // Disable analog mode
    // Set directions to output
    TRISE = 0;
   
    // Test LEDs
    LATE = 0xff;        
    
    // Turn off LEDs for initialization
    LATE = 0;

    // Button inputs
    ANSELGbits.ANSG7 = 0;
    
    // Set directions to input
    TRISGbits.TRISG7 = 1;
    TRISDbits.TRISD5 = 1;
    TRISFbits.TRISF1 = 1;
    TRISAbits.TRISA2 = 1; 
}

void InitApp(void) {
    // Initialize peripherals
    InitGPIO();
    InitBIOSGPIO();
    
    OledHostInit();
    OledDspInit();
    OledDvrInit();
    
    // TODO: Add UART4 Initialization call here
    UART4_init();
}

void Task1(void * pvParameters) {
    int n=0; 
    char buff[20];
    
    while (1) {
        sprintf(buff, "Task 1: %d", n++);
        // TODO: Take mutex here
        xSemaphoreTake(xMutexOLED, portMAX_DELAY);
        OledSetCursor(0,1);
        OledPutString(buff);
        // TODO: Give mutex here
        xSemaphoreGive(xMutexOLED);
        vTaskDelay(9);     
    }
}

void Task2(void * pvParameters) {
    int n=0; 
    char buff[20];
   
    while (1) {
        // TODO: Add trigger code here
        xSemaphoreTake(xSemTrigger, portMAX_DELAY);
        
        sprintf(buff, "Task 2: %d", n++);
        xSemaphoreTake(xMutexOLED, portMAX_DELAY);
        OledSetCursor(0,2);
        OledPutString(buff);
        xSemaphoreGive(xMutexOLED);
        
        // vTaskDelay(10);
    }
}

// TODO: Define function ClockTask here
void ClockTask(void * pvParameters) {
    int h=0, m=0, s=0;
    char buff[16];
    TickType_t xLastWakeTime;

     // Initialise the xLastWakeTime variable with the current time.
     xLastWakeTime = xTaskGetTickCount();    
    while (1) {
        s++;
        if (s>59) {
            s = 0;
            m++;
            if (m>59) {
                m = 0;
                h++;
            }
        }
        sprintf(buff, "%02u:%02u:%02u", h, m, s);
        xSemaphoreTake(xMutexOLED, portMAX_DELAY);
        OledSetCursor(0,3);
        OledPutString(buff);
        xSemaphoreGive(xMutexOLED);
        // TODO: Add serial transmit code here 
        strcat(buff, "\r\n"); // append CR/LF
        UART4_RTOS_qputs(buff);
        
        // TODO: Add trigger code here
        if ((s >= 5) && (s <= 15)) {
            xSemaphoreGive(xSemTrigger);
        }
        vTaskDelayUntil(&xLastWakeTime, configTICK_RATE_HZ);
    }
}

// TODO: Define SerialInTask here
void SerialInTask(void * pvParameters) {
    // Display incoming characters on row 0 of OLED
    char c = '\0';
    int x = 0, y = 0; // starting character location

    IEC5bits.U4RXIE = 1; // Enable receive interrupt
    
    while (1) {
        xQueueReceive(xQueueSerIn, &c, portMAX_DELAY);
        xSemaphoreTake(xMutexOLED, portMAX_DELAY);
        OledSetCursor(x, y);
        OledPutChar(c);
        if (x == 0) { // At beginning of line again?
            OledPutString("               "); // erase rest of line
        }
        xSemaphoreGive(xMutexOLED);
        x++;
        if (x > 15)
            x = 0;
    }
}

void DelayMs(int t) {
    volatile long int count = t*33356;
    
    while (count--)
        ;
}