/******************************************************************************/
/*  Files to Include                                                          */
/******************************************************************************/
#ifdef __XC32
    #include <xc.h>          /* Defines special function registers, CP0 regs  */
#endif

#include <stdint.h>         /* For uint32_t definition                        */
#include <stdbool.h>        /* For true/false definition                      */

#include "user.h"           /* User funct/params, such as InitApp             */
#include "OLED.h"
#include "UART.h"
#include "queue.h"

#include "stdio.h"
#include <math.h>

/******************************************************************************/
/* Global Variable Declaration                                                */
/******************************************************************************/

/* i.e. uint32_t <variable_name>; */

/******************************************************************************/
/* Main Program                                                               */
/******************************************************************************/

int32_t main(void)
{
    int t_poll=0, t_int=0;
    char buffer[16];
    
    /* Initialize I/O 
     * and Peripherals
     * for application */
    InitApp();
 
    OledSetCursor(0,0);
    OledPutString("UART+Interrupts");

    T2CONbits.ON = 1; // Start Timer 2
    TMR2 = 0; // Clear Timer 2. Each tick is 640 ns
    IEC5bits.U4TXIE = 0; // Disable transmit interrupt 
    // Enable transmitter
    U4STAbits.UTXEN = 1;
    UART4_puts ("Polling Test..");
    OledSetCursor(0,1);
    OledPutString("Polling Test");
    // Wait for UART transmission to complete
    while (U4STAbits.TRMT == 0)
        ;
    t_poll = TMR2; // Measure elapsed time


    TMR2 = 0; // Clear Timer 2 
    // Enable transmit interrupt
    IEC5bits.U4TXIE = 1; // Enable transmit interrupt, was disabled above 
    UART4_qputs("Interrupt Test"); // Use queued data + interrupts
    // qputs will enable transmitter by setting U4TXEN
    
    OledSetCursor(0,2);
    OledPutString("Interrupt Test");
    // Wait for UART transmission to complete
    while (U4STAbits.UTXEN == 1)
        ;
    t_int = TMR2; // Measure elapsed time
    T2CONbits.ON = 0; // Stop Timer 2
            
    // Display results
    OledSetCursor(0, 1);
    OledPutString("                ");
    OledSetCursor(0, 1);
    sprintf(buffer, "Poll: %6d", t_poll);
    OledPutString(buffer);

    OledSetCursor(0, 2);
    OledPutString("                ");
    OledSetCursor(0, 2);
    sprintf(buffer, "Int:  %6d", t_int);
    OledPutString(buffer);

    UART4_qputs("\r\nAll Done!\r\n"); // Use queued data + interrupts

    while (1);
}
