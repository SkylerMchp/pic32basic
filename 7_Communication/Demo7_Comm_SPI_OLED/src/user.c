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
    volatile long int count = t*33356;
    
    while (count--)
        ;
}
void InitTimer2(void) {
    T2CON = 0; // clear timer settings to defaults
    T2CONbits.TCKPS = 7; // divide clock by 256 with prescaler
    TMR2 = 0;
    PR2 = 39062; // 100 MHz / (256 * 10 Hz)
    
    IPC2bits.T2IP = 3; // Priority level 3
    IPC2bits.T2IS = 0;
    
    IFS0bits.T2IF = 0; // Clear interrupt request flag
    IEC0bits.T2IE = 1; // Enable timer interrupt
}

void __ISR(_TIMER_2_VECTOR, IPL3SOFT) ISR_Timer_2 (void) {
    static int LED_state = 1;
    
    // Toggle LED2
    LD2_PORT_BIT = LED_state;
    LED_state = 1-LED_state;
    
    // Reset interrupt flag
    IFS0bits.T2IF = 0;
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
     
    TRISDCLR = 1<<11;
}

void InitApp(void) {
    // Initialize peripherals
    InitGPIO();
    OledHostInit();
    OledDspInit();
    
#if 0
    InitTimer2();
    
    // Set Interrupt Controller for multi-vector mode
    INTCONSET = _INTCON_MVEC_MASK;
    // Globally enable interrupts
    __builtin_enable_interrupts();
    // Enable peripherals which can generate an interrupt
    T2CONbits.ON = 1; // Start Timer 2
    
#endif
}
