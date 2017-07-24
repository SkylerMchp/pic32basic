#include <stdint.h>
/******************************************************************************/
/* User Level #define Macros                                                  */
/******************************************************************************/

// Add I/O name macros here
#define LD1_PORT_BIT        PORTGbits.RG6
#define LD2_PORT_BIT        PORTDbits.RD4
#define LD3_PORT_BIT        PORTBbits.RB11
#define LD4_PORT_BIT        PORTGbits.RG15

#define BTN1_PORT_BIT       PORTAbits.RA5
#define BTN2_PORT_BIT       PORTAbits.RA4

#define CPU_TEMP_ADC_CHANNEL      (42)

// Basic I/O Shield 
#define BIOS_LD1_PORT_BIT        PORTEbits.RE0
#define BIOS_LD2_PORT_BIT        PORTEbits.RE1
#define BIOS_LD3_PORT_BIT        PORTEbits.RE2
#define BIOS_LD4_PORT_BIT        PORTEbits.RE3
#define BIOS_LD5_PORT_BIT        PORTEbits.RE4
#define BIOS_LD6_PORT_BIT        PORTEbits.RE5
#define BIOS_LD7_PORT_BIT        PORTEbits.RE6
#define BIOS_LD8_PORT_BIT        PORTEbits.RE7

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

#define ENABLE_EF_ADC_CODE (1)

/* TODO User level functions prototypes (i.e. InitApp) go here */

void InitApp(void);         /* I/O and Peripheral Initialization */
void DelayMs(int t);

int Timing_Test_Code(int * a, int  * b, int len);
