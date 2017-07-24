/******************************************************************************/
/* Files to Include                                                           */
/******************************************************************************/

#ifdef __XC32
#include <xc.h>          /* Defines special function registers, CP0 regs  */
#endif

#include <stdint.h>          /* For uint32_t definition                       */
#include <stdbool.h>         /* For true/false definition                     */
#include "user.h"            /* variables/params used by user.c               */

/******************************************************************************/
/* User Functions                                                             */

/******************************************************************************/

#if 1  // First version without #define names
void InitApp(void) {
    /* Setup analog functionality and port direction */

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

    // Turn on LEDs for testing
    LATBbits.LATB11 = 1;
    LATGbits.LATG6 = 1;
    LATGbits.LATG15 = 1;
    LATDbits.LATD4 = 1;

    // Stop program here
    // while (1);

    // BTN1 input
    // Disable analog mode
    ANSELAbits.ANSA5 = 0;
    // Set directions to input
    TRISAbits.TRISA5 = 1;

    // Initialize input for BTN2
    TRISAbits.TRISA4 = 1;
  
    // Test switches
    while (1) {
        LATGbits.LATG6 = PORTAbits.RA5;
        LATDbits.LATD4 = PORTAbits.RA4;
    }
}
#else
void InitApp(void) {
    /* Setup analog functionality and port direction */

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

    // Stop program here
    // while (1);

    // BTN1 input
    // Disable analog mode
    ANSELAbits.ANSA5 = 0;
    // Set directions to input
    TRISAbits.TRISA5 = 1;

    // Initialize input for BTN2
    TRISAbits.TRISA4 = 1;


    // Test switches
#if 0
    while (1) {
        LD1_PORT_BIT = BTN1_PORT_BIT;
        LD2_PORT_BIT = BTN2_PORT_BIT;
    }
#endif
}
#endif

void Delay(int n) {
    volatile int i;
    for (i = 0; i < n; i++) {
    }
}

// Starter version
void Flash_LED(void) {
    int delay_count;
    while (1) {
        if (PORTAbits.RA5 == 1) {
            // switch is pressed
            delay_count = 1000000;
        } else {
            // switch is not pressed
            delay_count = 4000000;
        }
        LATGbits.LATG6 = 1; // Turn on LED
        Delay(delay_count);
        LATGbits.LATG6 = 0; // Turn off LED
        Delay(delay_count);
    }
}
// Renamed version
#if 0
void Flash_LED(void) {
    int delay_count;
    while (1) {
        if (BTN1_PORT_BIT == 1) {
            // switch is pressed
            delay_count = 1000000;
        } else {
            // switch is not pressed
            delay_count = 4000000;
        }
        LD1_PORT_BIT = 1; // Turn on LED
        Delay(delay_count);
        LD1_PORT_BIT = 0; // Turn off LED
        Delay(delay_count);
    }
}
#endif

void Scan_LEDs(void) {
    int LED_state = 1; // 1 on (initial value), 0 off
    int delay_count=1000000;

    while (1) {
        if (BTN1_PORT_BIT == 1) { // switch 1 is pressed
            delay_count = 300000;
        } else {    // switch 1 is not pressed
            delay_count = 1000000;
        }
        
        if (BTN2_PORT_BIT == 1) { // switch 2 is pressed
            // Turn off all the LEDs
            LD1_PORT_BIT = 0;
            LD2_PORT_BIT = 0;
            LD3_PORT_BIT = 0;
            LD4_PORT_BIT = 0;
        } else {
            LD1_PORT_BIT = LED_state;
            Delay(delay_count);
            LD2_PORT_BIT = LED_state;
            Delay(delay_count);
            LD3_PORT_BIT = LED_state;
            Delay(delay_count);
            LD4_PORT_BIT = LED_state;
            Delay(delay_count);

            LED_state = 1 - LED_state; // next time, set LEDs to opposite state
        }
    }
}