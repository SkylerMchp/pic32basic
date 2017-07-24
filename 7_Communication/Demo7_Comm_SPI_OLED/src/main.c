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

/******************************************************************************/
/* Global Variable Declaration                                                */
/******************************************************************************/

/* i.e. uint32_t <variable_name>; */

/******************************************************************************/
/* Main Program                                                               */
/******************************************************************************/

int32_t main(void)
{
    uint8_t pattern[5]= {0x0, 0x11, 0x99, 0xbb, 0xff};
    char buffer[32];
    int x,y;
    int n, i=0;
    /* Initialize I/O 
     * and Peripherals
     * for application */
    InitApp();
    
    OledDvrInit();
    
    OledSetDrawColor(1);
    OledSetDrawMode(modOledSet);
    OledSetFillPattern(OledGetStdPattern(3));
    
    OledSetCursor(0,0);
    OledPutString("Hello,");
    OledSetCursor(0,1);
    OledPutString("World!");
    
    while (1) {
        OledSetCursor(0, 3);
        sprintf(buffer, "%7d", i);
        OledPutString(buffer);

        OledMoveTo(96,16);
        OledSetDrawColor(0);
        x = 96 + 15*cos(i/80.0);
        y = 16 + 15*sin(i/80.0);
//        OledLineTo(x, y);

        OledSetDrawColor(1);
        OledMoveTo(96,16);
        x = 96 + 15*cos((i+1)/80.0);
        y = 16 + 15*sin((i+1)/80.0);
 //       OledLineTo(x, y);
        OledUpdate();
        i++;
    }

}
