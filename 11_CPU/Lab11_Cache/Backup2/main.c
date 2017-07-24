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

#define NUM_ROWS (64)
#define NUM_COLS (NUM_ROWS)

/******************************************************************************/
/* Global Variable Declaration                                                */
/******************************************************************************/
int dummy[D_CACHE_SIZE / sizeof (int)];
int aa[NUM_ROWS][NUM_COLS];
const int __attribute__((space(prog))) ab[NUM_ROWS][NUM_COLS];

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
    unsigned int t_test_1, t_test_2;

    char buffer[16];
    int sum = 0;
    int i;

    /* Initialize I/O and Peripherals
     * for application */
    InitApp();

    OledSetCursor(0, 0);
    OledPutString("CPU Evaluation");
    DelayMs(500);
    
//    for (i = 0; i < 4; i++) {
//        Pollute_Cache();
//        t_test_1 = Timed_Array_Test_CR(n_rows, n_cols, aa, &sum);
//
//        Pollute_Cache();
//        t_test_2 = Timed_Array_Test_RC(n_rows, n_cols, aa, &sum);
//        sprintf(buffer, "%3u: %5u %5u", n_rows, t_test_1, t_test_2);
//        OledSetCursor(0, i);
//        OledPutString(buffer);
//        n_rows *= 2;
//        n_cols *= 2;
//    }
//
//    while (1)
//        ;


    while (1) {
        // Run test and time it
        OledSetCursor(0, 0);
        OledPutString("RAM");
        // TODO: pollute cache
        Pollute_Cache();
        t_test = Timed_Array_Test_CR(NUM_ROWS, NUM_COLS, aa, &sum);
        sprintf(buffer, "C:%5u", t_test);
        OledSetCursor(0, 1);
        OledPutString(buffer);
        // TODO: pollute cache
        Pollute_Cache();
        // TODO: add call to do array test in row-column order
        t_test = Timed_Array_Test_RC(NUM_ROWS, NUM_COLS, aa, &sum);
        sprintf(buffer, "R:%5u", t_test);
        OledSetCursor(8, 1);
        OledPutString(buffer);

        // Run test and time it
        OledSetCursor(0, 2);
        OledPutString("ROM");
        // TODO: pollute cache
        Pollute_Cache();
        t_test = Timed_Array_Test_CR(NUM_ROWS, NUM_COLS, ab, &sum);
        sprintf(buffer, "C:%5u", t_test);
        OledSetCursor(0, 3);
        OledPutString(buffer);
        // TODO: pollute cache
        Pollute_Cache();
        // TODO: add call to do array test in row-column order
        t_test = Timed_Array_Test_RC(NUM_ROWS, NUM_COLS, ab, &sum);
        sprintf(buffer, "R:%5u", t_test);
        OledSetCursor(8, 3);
        OledPutString(buffer);
        
        //        Pollute_Cache();
        //        BIOS_LD1_PORT_BIT = 1;
        //        t_test = Timed_Array_Test_RC(NUM_ROWS, NUM_COLS, aa, &sum);
        //        BIOS_LD1_PORT_BIT = 0;
        //        sprintf(buffer, "By Row: %5u", t_test);
        //        OledSetCursor(0, 3);
        //        OledPutString(buffer);

        // LATESET = n; // BIOS LED LD2
        // asm("sw $3,%lo(LATECLR)($2)");
        //        asm("nop");
        //        asm("nop");
        //        asm("nop");
        //        asm("nop");
        //        asm("nop");
        //        LATECLR = n;
        //        if (BIOS_BTN1_PORT_BIT) {
        //            
        //        }
    }
}
