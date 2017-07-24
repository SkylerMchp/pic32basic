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

#define D_CACHE_SIZE (4096)

#define NUM_ROWS (48)
#define NUM_COLS (NUM_ROWS)

/******************************************************************************/
/* Global Variable Declaration                                                */
/******************************************************************************/
int dummy[D_CACHE_SIZE / sizeof (int)];
int aa[NUM_ROWS][NUM_COLS];

/******************************************************************************/
/* Main Program                                                               */

/******************************************************************************/
unsigned Timed_Array_Test_CR(int nr, int nc, int a[][nc], int * ret_sum) {
    int r, c;
    int sum = 0;
    unsigned t;

    BIOS_LD1_PORT_BIT = 1;
    TMR2 = 0;
    r = 0;
    do {
        c = 0;
        do {
            sum += a[r][c];
            c++;
        } while (c < nc);
        r++;
    } while (r < nr);
    t = TMR2;
    BIOS_LD1_PORT_BIT = 0;
    * ret_sum = sum;
    return t;
}

unsigned Timed_Array_Test_RC(int nr, int nc, int a[][nc], int * ret_sum) {
    int r, c;
    int sum = 0;
    unsigned t;

    BIOS_LD1_PORT_BIT = 1;
    TMR2 = 0;
    c = 0;
    do {
        r = 0;
        do {
            sum += a[r][c];
            r++;
        } while (r < nr);
        c++;
    } while (c < nc);
    t = TMR2;
    BIOS_LD1_PORT_BIT = 0;
    * ret_sum = sum;
    return t;
}

int Pollute_Cache(void) {
    unsigned i;
    int sum = 0;

    for (i = 0; i < D_CACHE_SIZE / sizeof (int); i++) {
        sum += dummy[i];
    }
}

int32_t main(void) {
    unsigned int t_test = 0;
    char buffer[16];
    int sum = 0;
    int i=0;

    /* Initialize I/O and Peripherals for application */
    InitApp();

    OledSetCursor(0, 0);
    OledPutString("Cache Eval.");
    DelayMs(500);

    while (1) {        
        sprintf(buffer, "%u*%u array", NUM_ROWS, NUM_COLS);
        OledSetCursor(0, 1);
        OledPutString(buffer);
        
        // Run test and time it
        // TODO: pollute cache
        Pollute_Cache();
        t_test = Timed_Array_Test_CR(NUM_ROWS, NUM_COLS, aa, &sum);

        sprintf(buffer, "%6u T2 ticks", t_test);
        OledSetCursor(0, 2);
        OledPutString(buffer);
        
        sprintf(buffer, "%6.3f CPU cy/el", (4.0*t_test)/(NUM_ROWS*NUM_COLS));
        OledSetCursor(0, 3);
        OledPutString(buffer);
    }
}
