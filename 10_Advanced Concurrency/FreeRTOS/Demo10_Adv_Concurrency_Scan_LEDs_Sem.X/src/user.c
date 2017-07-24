// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************
#include <xc.h>          /* Defines special function registers, CP0 regs  */
#include <stdint.h>          /* For uint32_t definition                       */

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

#include "user.h"            /* variables/params used by user.c               */

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

int scan_delay = SLOW_SCAN_DELAY;

SemaphoreHandle_t xSemScan;


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

void PollSwitchesTask ( void * pvParameters )
{
    int prev_btn=0;  // 
    
    while (1) {
        // Is switch pressed?
        if (BTN1_PORT_BIT == 1){
            if (prev_btn == 0) { // Button wasn't pressed last time
                xSemaphoreGive(xSemScan);
            }
            prev_btn = 1;
        } else {
            prev_btn = 0;
        }
        vTaskDelay(SWITCH_POLL_DELAY);     
    }
}

void ScanLEDsTask ( void * pvParameters)
{
    while (1) {
        xSemaphoreTake(xSemScan, portMAX_DELAY);
        LD1_PORT_BIT = 1;
        vTaskDelay(scan_delay);
        LD2_PORT_BIT = 1;
        vTaskDelay(scan_delay);
        LD3_PORT_BIT = 1;
        vTaskDelay(scan_delay);
        LD4_PORT_BIT = 1;
        vTaskDelay(scan_delay);
        LD1_PORT_BIT = 0;
        vTaskDelay(scan_delay);
        LD2_PORT_BIT = 0;
        vTaskDelay(scan_delay);
        LD3_PORT_BIT = 0;
        vTaskDelay(scan_delay);
        LD4_PORT_BIT = 0;
    }
}
