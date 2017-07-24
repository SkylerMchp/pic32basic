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

#define FSM_IN_ISR (0) // set to 1 for FSM in ISR, 0 for FSM in task

#if FSM_IN_ISR == 0
volatile int Run_TASK_Scan_LEDs=0; // Request task to run
// Volatile since modified by ISR and mainline code
#endif

int G_Allow_Lit_LEDs = 1; // Allow LEDs to be on initially

/******************************************************************************/
/* User Functions                                                             */
/******************************************************************************/
void InitTimer2(void) {
    T2CON = 0; // clear timer settings to defaults
    T2CONbits.TCKPS = 7; // divide clock by 256 with prescaler
    TMR2 = 0;
    PR2 = SLOW_PERIOD; 
    
    IPC2bits.T2IP = 3; // Priority level 3
    IPC2bits.T2IS = 0;
    
    IFS0bits.T2IF = 0; // Clear interrupt request flag
    IEC0bits.T2IE = 1; // Enable timer interrupt
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
    InitTimer2();
    
    // Set Interrupt Controller for multi-vector mode
    INTCONSET = _INTCON_MVEC_MASK;
    // Globally enable interrupts
    __builtin_enable_interrupts();
    // Enable peripherals which can generate an interrupt
    T2CONbits.ON = 1; // Start Timer 2
}

#if FSM_IN_ISR
void __ISR(_TIMER_2_VECTOR, IPL3SOFT) ISR_Timer_2_Scan_LED_FSM (void) {
    static int LED_state = 1; // 1 on (initial value), 0 off
    static int FSM_state = 1; 

    switch (FSM_state) {
    case 1:
        LD1_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
        FSM_state++; // Advance to next state
        break;
    case 2:
        LD2_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
        FSM_state++; // Advance to next state
        break;
    case 3:
        LD3_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
        FSM_state++; // Advance to next state
        break;
    case 4:
        LD4_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
        LED_state = 1 - LED_state; // next time, flip LEDs 
        FSM_state = 1; // Advance to next state
        break;
    default:
        FSM_state = 1;
        break;
    }
    IFS0bits.T2IF = 0;     // Reset interrupt flag
}
#else
void __ISR(_TIMER_2_VECTOR, IPL3SOFT) ISR_Timer_2_Scan_LED_FSM (void) {
    Run_TASK_Scan_LEDs++; // Add a request to run this task
    IFS0bits.T2IF = 0;     // Reset interrupt flag
}
#endif

#if FSM_IN_ISR == 0 // FSM is in task, so need the task
void TASK_Scan_LEDs(void) {
    static int LED_state = 1; // 1 on (initial value), 0 off
    static int FSM_state = 1; 
    
    switch (FSM_state) {
    case 1:
        LD1_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
        FSM_state++; // Advance to next state
        break;
    case 2:
        LD2_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
        FSM_state++; // Advance to next state
        break;
    case 3:
        LD3_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
        FSM_state++; // Advance to next state
        break;
    case 4:
        LD4_PORT_BIT = LED_state & G_Allow_Lit_LEDs;
        LED_state = 1 - LED_state; // next time, flip LEDs 
        FSM_state = 1; // Advance to next state
        break;
    default:
        FSM_state = 1;
        break;
    }
}
#endif

void TASK_Read_Switches(void) {
    if (BTN1_PORT_BIT == 1) { // switch 1 is pressed
        PR2 = FAST_PERIOD; 
    } else {    // switch 1 is not pressed
        PR2 = SLOW_PERIOD; 
    }
    if (BTN2_PORT_BIT == 1) { // switch 2 is pressed
        G_Allow_Lit_LEDs = 0;
    } else {
        G_Allow_Lit_LEDs = 1;
    }
}
#if FSM_IN_ISR
void Scan_LEDs_with_Tasks(void) {
    while (1) {
        TASK_Read_Switches();
    }
}
#else
void Scan_LEDs_with_Tasks(void) {
    while (1) {
        TASK_Read_Switches();
        if (Run_TASK_Scan_LEDs > 0) {
            // Run the task
            TASK_Scan_LEDs();       
            // Decrement run request count
            Run_TASK_Scan_LEDs--;   
        }
    }
}
#endif

