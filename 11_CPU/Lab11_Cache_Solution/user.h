#include <stdint.h>
/******************************************************************************/
/* User Level #define Macros                                                  */
/******************************************************************************/

// Add I/O name macros here
#define LD1_PORT_BIT        LATGbits.LATG6
#define LD2_PORT_BIT        LATDbits.LATD4
#define LD3_PORT_BIT        LATBbits.LATB11
#define LD4_PORT_BIT        LATGbits.LATG15

#define BTN1_PORT_BIT       PORTAbits.RA5
#define BTN2_PORT_BIT       PORTAbits.RA4

#define CPU_TEMP_ADC_CHANNEL      (42)

// Basic I/O Shield 
#define BIOS_LD1_PORT_BIT        LATEbits.LATE0
#define BIOS_LD2_PORT_BIT        LATEbits.LATE1
#define BIOS_LD3_PORT_BIT        LATEbits.LATE2
#define BIOS_LD4_PORT_BIT        LATEbits.LATE3
#define BIOS_LD5_PORT_BIT        LATEbits.LATE4
#define BIOS_LD6_PORT_BIT        LATEbits.LATE5
#define BIOS_LD7_PORT_BIT        LATEbits.LATE6
#define BIOS_LD8_PORT_BIT        LATEbits.LATE7

#define BIOS_BTN1_PORT_BIT       PORTGbits.RG7
#define BIOS_BTN2_PORT_BIT       PORTDbits.RD5
#define BIOS_BTN3_PORT_BIT       PORTFbits.RF1
#define BIOS_BTN4_PORT_BIT       PORTAbits.RA2

#define BIOS_SW1_PORT_BIT       PORTEbits.RE8
#define BIOS_SW2_PORT_BIT       PORTEbits.RE9
#define BIOS_SW3_PORT_BIT       PORTAbits.RA14
#define BIOS_SW4_PORT_BIT       PORTCbits.RC1


// typedef uint8_t BYTE;

/******************************************************************************/
/* User Function Prototypes                                                    /
/******************************************************************************/

#define USE_SRS ( 1)

/* TODO User level functions prototypes (i.e. InitApp) go here */

void InitApp(void);         /* I/O and Peripheral Initialization */
void DelayMs(int t);

int Timing_Test_Code(int * a, int  * b, int len);
