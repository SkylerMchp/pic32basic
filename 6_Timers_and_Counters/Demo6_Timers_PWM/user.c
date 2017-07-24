/******************************************************************************/
/* Files to Include                                                           */
/******************************************************************************/

#ifdef __XC32
#include <xc.h>          /* Defines special function registers, CP0 regs  */
#endif

#include <stdint.h>          /* For uint32_t definition                       */
#include <stdbool.h>         /* For true/false definition                     */
#include "user.h"            /* variables/params used by user.c               */
#include <sys/attribs.h>

/******************************************************************************/
/* User Functions                                                             */

/******************************************************************************/
void InitTimer2AndOC8(void) {
    T2CON = 0; // clear timer settings to defaults
    T2CONbits.TCKPS = 7; // divide clock by 256 with prescaler
    TMR2 = 0;
    // Set period for timer
    PR2 = PWM_PERIOD_COUNTS-1;    
    // Set initial duty cycle to 50%
    OC8R = PWM_PERIOD_COUNTS/2;
    // Set reload duty cycle to 50%
    OC8RS = PWM_PERIOD_COUNTS/2;
    // Configure OC5 control register
    OC8CONbits.ON = 1;
    OC8CONbits.OC32 = 0;    // 16 bit mode
    OC8CONbits.OCTSEL = 0; // Select timer 2
    OC8CONbits.OCM = 6; // Select PWM mode without fault pin
    // Map OC8 signal to pin D4 (LED LD2)
    RPD4R = 12; // Select OC8
    // Start Timer 2
    T2CONbits.ON = 1;
}

void LEDHeartbeat(void) {
    static int on_time_counts = 0;  // static to retain value across calls
    static int step = 1;            // static to retain value across calls
    
    // change duty cycle
    on_time_counts += step;  
    // Check for underflow and overflow
    if (on_time_counts < 0) {
        on_time_counts = 0;
        step = 1;
    } else if (on_time_counts > PWM_PERIOD_COUNTS-1) {
        on_time_counts = PWM_PERIOD_COUNTS-1;
        step = -1;
    }
    // Update OC2 duty cycle
    OC8RS = on_time_counts;
}

void InitGPIO(void) {
    /* Setup functionality and port direction */
    // LED output
    // Disable analog mode
    ANSELGbits.ANSG6 = 0;
    ANSELBbits.ANSB11 = 0;
    ANSELGbits.ANSG15 = 0;
    // Set directions to output
    TRISGbits.TRISG6 = 0;
    TRISBbits.TRISB11 = 0;
    TRISGbits.TRISG15 = 0;
    TRISDbits.TRISD4 = 0;

    // Turn off LEDs for initialization
    LD1_PORT_BIT = 0;
    LD2_PORT_BIT = 0;
    LD3_PORT_BIT = 0;
    LD4_PORT_BIT = 0;

    // Button inputs
    // Disable analog mode
    ANSELAbits.ANSA5 = 0;
    // Set directions to input
    TRISAbits.TRISA5 = 1;
    TRISAbits.TRISA4 = 1;
}

void InitApp(void) {
    // Initialize peripherals
    InitGPIO();
    InitTimer2AndOC8();
}

void Delay(int n) {
    volatile int i;
    for (i = 0; i < n; i++) {
    }
}