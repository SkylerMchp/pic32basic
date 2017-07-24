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
#include "ADC.h"

/******************************************************************************/
/* User Functions                                                             */
/******************************************************************************/
void InitTimer2AndOC5(void) {
    T2CON = 0; // clear timer settings to defaults
    T2CONbits.TCKPS = 7; // divide clock by 256 with prescaler
    TMR2 = 0;
    // Set period for timer
    PR2 = PWM_PERIOD_COUNTS-1;    
    // Set initial duty cycle to 50%
    OC5R = PWM_PERIOD_COUNTS/2;
    // Set reload duty cycle to 50%
    OC5RS = PWM_PERIOD_COUNTS/2;
    // Configure OC5 control register
    OC5CONbits.ON = 1;
    OC5CONbits.OC32 = 0;    // 16 bit mode
    OC5CONbits.OCTSEL = 0; // Select timer 2
    OC5CONbits.OCM = 6; // Select PWM mode without fault pin
    // Map OC5 signal to pin G6
    RPG6R = 11; // Select OC5
    // Start Timer 2
    T2CONbits.ON = 1;
}

void AdjustLED1Brightness(void) {
    unsigned int pot_pos = 0, on_time_counts=0;
    
    // Read ADC
    pot_pos = ReadPotentiometerWithADC();
    // Convert value to on-time (counts)
    on_time_counts = (pot_pos*PWM_PERIOD_COUNTS)/MAX_ADC_VALUE;
    // Update OC5
    OC5RS = on_time_counts;
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
    initWiFIREadc();
    InitTimer2AndOC5();
}