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
    // Initialize Timer2. See details in Section 14 (Timers) 
    // of the PIC32 Family Reference Manual
    T2CON = 0; // clear timer settings to defaults
    T2CONbits.TCKPS = ; // divide clock by 256 with prescaler
    TMR2 = 0;  // clear counter to 0
    // Set period for timer using symbol PWM_PERIOD_COUNTS from user.h
    PR2 = ;

    // Initialize OC5. See details in Section 16 (Output Compare) 
    // of the PIC32 Family Reference Manual. Use Pulse Width Modulation, which 
    // is described in Section 16.3.3.
    // Set initial duty cycle to 50%
    OC5R = ;
    // Set reload duty cycle to 50%
    OC5RS = ;
    // Configure OC5 control register
    OC5CONbits.ON = ;  // Turn on OC5
    OC5CONbits.OC32 = ;    // Select 16 bit mode
    OC5CONbits.OCTSEL = ; // Select timer 2
    OC5CONbits.OCM = ; // Select PWM mode without fault pin
    
    // Configure Peripheral Pin Select to connect OC5 output signal to pin G6,
    // which drives LED LD1.
    // See details in Section 12.4 of the PIC32MZ EF Data Manual.
    // There is also general information in Section 12.3.1 of the PIC32 Family 
    // Reference Manual.
    RPG6R = ; // Select OC5

    // Start Timer 2
    T2CONbits.ON = ;
}

void AdjustLED1Brightness(void) {
    unsigned int pot_pos = 0, on_time_counts=0;
    
    // Read potentiometer value using ADC

    // Convert potentiometer value to on-time (counts)

    // Update OC5RS with new on-time count
    
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
    // Add code to call functions which initialize peripherals: GPIO, ADC, Timer2, OC5
    
}