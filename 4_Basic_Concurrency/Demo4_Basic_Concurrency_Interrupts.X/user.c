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

volatile int G_Allow_Lit_LEDs = 1; // Allow LEDs to be on initially
volatile int G_LED_Scan_Delay = SLOW_DELAY; // Scan LEDs slowly initially

/******************************************************************************/
/* User Functions                                                             */
/******************************************************************************/
void InitApp(void) {
    /* Setup analog functionality and port direction */
    // LED outputs
    // Disable analog mode if present
    ANSELGbits.ANSG6 = 0;
    ANSELBbits.ANSB11 = 0;
    ANSELGbits.ANSG15 = 0;
    // Set direction to output 
    TRISGbits.TRISG6 = 0;
    TRISBbits.TRISB11 = 0;
    TRISGbits.TRISG15 = 0;
    TRISDbits.TRISD4 = 0;
    // Turn off LEDs for initialization
    LD1_PORT_BIT = 0;
    LD2_PORT_BIT = 0;
    LD3_PORT_BIT = 0;
    LD4_PORT_BIT = 0;

    // BTN1 and BTN2 inputs
    // Disable analog mode
    ANSELAbits.ANSA5 = 0;
    // Set directions to input
    TRISAbits.TRISA5 = 1;
    TRISAbits.TRISA4 = 1;

    // 3. Configure peripheral to generate interrupts
    // Enable change notification interrupt in CN
    CNENAbits.CNIEA5 = 1;
    CNENAbits.CNIEA4 = 1;
    // 4. Configure Interrupt Controller
    // Enable change notification  interrupts
    IEC3bits.CNAIE = 1;
    // Set priority
    IPC29bits.CNAIP = 2;
    // Clear interrupt Flag
    IFS3bits.CNAIF = 0;
    // 5. Set Interrupt Controller for multi-vector mode
    INTCONSET = _INTCON_MVEC_MASK;
    // 6. Globally enable interrupts
    __builtin_enable_interrupts();
    // 7. Enable peripheral
    CNCONAbits.ON = 1;
}

void Delay(int n) {
    volatile int i;
    for (i = 0; i < n; i++) {
    }
}

void TASK_Scan_LEDs(void) {
    static int LED_state = 1; // 1 on (initial value), 0 off

    LD1_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
    Delay(G_LED_Scan_Delay);
    LD2_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
    Delay(G_LED_Scan_Delay);
    LD3_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
    Delay(G_LED_Scan_Delay);
    LD4_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
    Delay(G_LED_Scan_Delay);
    LED_state = 1 - LED_state; // next time, invert LEDs
}

void __ISR(_CHANGE_NOTICE_A_VECTOR, IPL2SOFT) ISR_PortA_Change(void) {
    if (CNSTATAbits.CNSTATA4 == 1) { // Bit 4 (BTN2) changed
        if (BTN2_PORT_BIT == 1)  { // Switch is pressed
            // Turn off LEDs as soon as possible
            LD1_PORT_BIT = 0;
            LD2_PORT_BIT = 0;
            LD3_PORT_BIT = 0;
            LD4_PORT_BIT = 0;
            // Don't allow LEDs to be lit
            G_Allow_Lit_LEDs = 0;
        } else {    // Switch isn't pressed
            // Allow LEDs to be lit
            G_Allow_Lit_LEDs = 1;
        }
    } else if (CNSTATAbits.CNSTATA5 == 1) { // Bit 4 (BTN1) changed
        if (BTN1_PORT_BIT == 1)  { // Switch is pressed, so use fast scan
            G_LED_Scan_Delay = FAST_DELAY;
        } else { // Switch isn't pressed, so use slow scan
            G_LED_Scan_Delay = SLOW_DELAY;
        }
    }
    // Reset interrupt flag
    IFS3bits.CNAIF = 0;
}

void Scan_LEDs_with_Tasks(void) {
    while (1) {
        TASK_Scan_LEDs();
    }
}

