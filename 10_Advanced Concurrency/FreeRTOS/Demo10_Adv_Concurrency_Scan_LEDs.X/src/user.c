// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************
#include <xc.h>          /* Defines special function registers, CP0 regs  */
#include <stdint.h>          /* For uint32_t definition                       */

#include "FreeRTOS.h"
#include "task.h"

#include "user.h"            /* variables/params used by user.c               */

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

int blanking = 0;
int scan_delay = SLOW_SCAN_DELAY;

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
    while (1) {
        // Is speed switch pressed?
        if (BTN1_PORT_BIT == 1) {
            scan_delay = FAST_SCAN_DELAY;
        } else {
            scan_delay = SLOW_SCAN_DELAY;
        }
        // Is blanking switch pressed?
        if (BTN2_PORT_BIT == 1) {
            // Blank all the LEDs
            LD1_PORT_BIT = LD2_PORT_BIT = LD3_PORT_BIT = LD4_PORT_BIT = 0;
            // Set blanking flag
            blanking = 1;
        } else {
            // Clear blanking flag
            blanking = 0;
        }
        vTaskDelay(SWITCH_POLL_DELAY);     
    }
}

void ScanLEDsTask ( void * pvParameters)
{
    int LED_state = 1; // 1 on (initial value), 0 off

    while (1) {
        if (!blanking) {
            LD1_PORT_BIT = LED_state;
            vTaskDelay(scan_delay);
        }
        if (!blanking) {      
            LD2_PORT_BIT = LED_state;
            vTaskDelay(scan_delay);
        }
        if (!blanking) {
            LD3_PORT_BIT = LED_state;
            vTaskDelay(scan_delay);
        }
        if (!blanking) {
            LD4_PORT_BIT = LED_state;
            vTaskDelay(scan_delay);
        }
        LED_state = 1 - LED_state;  // next time, set LEDs to opposite state
        vTaskDelay(scan_delay);     
    }
}

void BlinkLEDTask ( void * pvParameters)
{
    int LED_state = 1; // 1 on (initial value), 0 off

    while (1) {
        LD1_PORT_BIT = LED_state;   // Change LED
        LED_state = 1 - LED_state;  // Next time, set LEDs to opposite state
        vTaskDelay(scan_delay);     // Pause this task for scan_delay ticks
    }
}
