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

int G_Allow_Lit_LEDs = 1; // Allow LEDs to be on initially
int G_LED_Scan_Delay = SLOW_DELAY; // Scan LEDs slowly initially

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
}

void Delay(int n) {
    volatile int i;
    for (i = 0; i < n; i++) {
    }
}

void TASK_Read_Switches(void) {
    if (BTN1_PORT_BIT == 1) { // switch 1 is pressed
        G_LED_Scan_Delay = FAST_DELAY;
    } else {    // switch 1 is not pressed
        G_LED_Scan_Delay = SLOW_DELAY;
    }
    if (BTN2_PORT_BIT == 1) { // switch 2 is pressed
        G_Allow_Lit_LEDs = 0;
    } else {
        G_Allow_Lit_LEDs = 1;
    }
}

/*
          // Turn off all the LEDs
        LD1_PORT_BIT = 0;
        LD2_PORT_BIT = 0;
        LD3_PORT_BIT = 0;
        LD4_PORT_BIT = 0;
*/

void TASK_Scan_LEDs_Once(void) {
    static int LED_state = 1; // 1 on (initial value), 0 off

    LD1_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
    Delay(G_LED_Scan_Delay);
    LD2_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
    Delay(G_LED_Scan_Delay);
    LD3_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
    Delay(G_LED_Scan_Delay);
    LD4_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
    Delay(G_LED_Scan_Delay);
    LED_state = 1 - LED_state; // next time, set LEDs to opposite state
}

void TASK_Scan_LEDs_Once_FSM(void) {
    static int LED_state = 1; // 1 on (initial value), 0 off
    static int FSM_state = 1;

    switch (FSM_state) {
    case 1:
        LD1_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
        Delay(G_LED_Scan_Delay);
        FSM_state++; // Advance to next state
        break;
    case 2:
        LD2_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
        Delay(G_LED_Scan_Delay);
        FSM_state++; // Advance to next state
        break;
    case 3:
        LD3_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
        Delay(G_LED_Scan_Delay);
        FSM_state++; // Advance to next state
        break;
    case 4:
        LD4_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
        Delay(G_LED_Scan_Delay);
        LED_state = 1 - LED_state; // next time, set LEDs to opposite state
        FSM_state = 1; // Advance to next state
        break;
    default:
        FSM_state = 1;
        break;
    }
}

void Scan_LEDs_with_Tasks(void) {
    while (1) {
        TASK_Read_Switches();
        TASK_Scan_LEDs_Once();
    }
}


