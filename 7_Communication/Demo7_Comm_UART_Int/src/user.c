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
#include "queue.h"

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
}

void InitTimer2(void) {
    T2CON = 0; // clear timer settings to defaults
    T2CONbits.TCKPS = 6; // prescale by factor of 64
    // 1 tick = 640 ns
    TMR2 = 0; // clear timer
    // Timer is not running yet. Need to set ON to 1.

    // No interrupts needed.
}

void InitApp(void) {
    // Initialize peripherals
    InitGPIO();
    InitTimer2();
    OledHostInit();
    OledDspInit();
    OledDvrInit();
    UART4_init();

#if 1
    // Set Interrupt Controller for multi-vector mode
    INTCONSET = _INTCON_MVEC_MASK;
    // Globally enable interrupts
    __builtin_enable_interrupts();
    // Enable peripherals which can generate an interrupt
    U4MODEbits.ON = 1; // enable UART
#endif


}
