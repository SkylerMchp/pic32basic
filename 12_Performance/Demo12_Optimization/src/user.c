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
void DelayMs(int t) {
    volatile long int count = t * 33356;

    while (count--)
        ;
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

    TRISDCLR = 1 << 11;

    // Slide switch inputs
    // Disable Analog 
    ANSELEbits.ANSE8 = 0;
    ANSELEbits.ANSE9 = 0;
    ANSELCbits.ANSC1 = 0;

    // Set directions to input
    TRISEbits.TRISE8 = 1;
    TRISEbits.TRISE9 = 1;
    TRISAbits.TRISA14 = 1;
    TRISCbits.TRISC1 = 1;
}

void InitBIOS(void) {
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
    // Disable Analog 
    ANSELGbits.ANSG7 = 0;
    // Set directions to input
    TRISGbits.TRISG7 = 1;
    TRISDbits.TRISD5 = 1;
    TRISFbits.TRISF1 = 1;
    TRISAbits.TRISA2 = 1;

    // ADC input for pot
    TRISBbits.TRISB5 = 1;

    // Slide switch inputs
    // Disable Analog 
    ANSELEbits.ANSE8 = 0;
    ANSELEbits.ANSE9 = 0;
    ANSELCbits.ANSC1 = 0;

    // Set directions to input
    TRISEbits.TRISE8 = 1;
    TRISEbits.TRISE9 = 1;
    TRISAbits.TRISA14 = 1;
    TRISCbits.TRISC1 = 1;

}

void AwaitBIOSButtonPress(int num) {
    // wait for button to be released
    // wait for button to be pressed
    // wait for button to be released
    switch (num) {
        case 1:
            while (!BIOS_BTN1_PORT_BIT)
                DelayMs(5);
            while (BIOS_BTN1_PORT_BIT)
                DelayMs(5);
            while (!BIOS_BTN1_PORT_BIT)
                DelayMs(5);
            break;
        case 2:
            while (!BIOS_BTN2_PORT_BIT)
                DelayMs(5);
            while (BIOS_BTN2_PORT_BIT)
                DelayMs(5);
            while (!BIOS_BTN2_PORT_BIT)
                DelayMs(5);
            break;
        case 3:
            while (!BIOS_BTN3_PORT_BIT)
                DelayMs(5);
            while (BIOS_BTN3_PORT_BIT)
                DelayMs(5);
            while (!BIOS_BTN3_PORT_BIT)
                DelayMs(5);
            break;
        case 4:
            while (!BIOS_BTN4_PORT_BIT)
                DelayMs(5);
            while (BIOS_BTN4_PORT_BIT)
                DelayMs(5);
            while (!BIOS_BTN4_PORT_BIT)
                DelayMs(5);
            break;
        default:
            break;
    }
}

void InitTimer2(void) {
    T2CON = 0; // clear timer settings to defaults
    T2CONbits.TCKPS = 2; // prescale 100 MHz clock by factor of 4
    TMR2 = 0; // clear timer

#if ENABLE_TIMER2_INTS
    IPC2bits.T2IP = 3; // Priority level 3
    IPC2bits.T2IS = 0;

    IFS0bits.T2IF = 0; // Clear interrupt request flag
    IEC0bits.T2IE = 1; // Enable timer interrupt
#endif

}

void __ISR(_TIMER_2_VECTOR, IPL3SRS) ISR_Timer_2(void) {
    unsigned int PC;

    PC = _CP0_GET_EPC();
    Handle_Profile_Sample(PC);

    // Reset interrupt flag
    IFS0bits.T2IF = 0;
}

void InitApp(void) {
    // Initialize peripherals
    InitGPIO();
    InitBIOS();
    InitTimer2();
    OledInit();

    // TODO: Set PREFEN mode
    // 0: Disable, 1: CPU instructions, 2. CPU instrs + data, 3. Any address
    PRECONbits.PREFEN = 3;
    // TODO: Set PFMWS for wait states
    PRECONbits.PFMWS = 2;

    // Set up Shadow Register Sets
    PRISS = 0x76543210; /* assign shadow set #7-#1 to priority level #7-#1 ISRs */

    // Set Interrupt Controller for multi-vector mode
    INTCONSET = _INTCON_MVEC_MASK;

    // Globally enable interrupts
    __builtin_enable_interrupts();
    // Enable peripherals which can generate an interrupt
#if ENABLE_TIMER2_INTS
    T2CONbits.ON = 1; // Start Timer 2
#endif
}

