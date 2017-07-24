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

#include "stdio.h"
#include <math.h>

extern void Animate(int);

/******************************************************************************/
/* Global Variable Declaration                                                */
/******************************************************************************/

/******************************************************************************/
/* Main Program                                                               */

/******************************************************************************/


int32_t main(void) {
    unsigned int t_test = 0;
    char buffer[16];
    int sum = 0;
    int i;

    /* Initialize I/O and Peripherals for application */
    InitApp();

    OledSetCursor(0, 0);
    OledPutString("Profiler Eval.");
    DelayMs(200);
    OledClear();

    Init_Profiling();
    Enable_Profiling();
    Animate(500);
    Disable_Profiling();

    OledClear();
    Sort_Profile();
    Display_Profile();
    
    OledSetCursor(0, 2);
    OledPutString("Done!");

    while (1)
        ;
}
