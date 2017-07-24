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

#define SLOW_DELAY          10000000
#define FAST_DELAY          300000

#define TIMER_CLOCK_FREQ    (100000000)

#define FAST_PERIOD         (TIMER_CLOCK_FREQ/(256 * 30))
#define SLOW_PERIOD         (TIMER_CLOCK_FREQ/(256 * 8))

/* TODO Application specific user parameters used in user.c may go here */

/******************************************************************************/
/* User Function Prototypes                                                    /
/******************************************************************************/

/* TODO User level functions prototypes (i.e. InitApp) go here */

void InitApp(void);         /* I/O and Peripheral Initialization */

void Flash_LED(void);
void Scan_LEDs(void);
void Scan_LEDs_With_CN_Int(void);
