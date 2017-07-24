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

/* TODO Application specific user parameters used in user.c may go here */
#define SLOW_SCAN_DELAY (10)
#define FAST_SCAN_DELAY (2)
#define SWITCH_POLL_DELAY (7)

/******************************************************************************/
/* User Function Prototypes                                                   */
/******************************************************************************/

/* TODO User level functions prototypes (i.e. InitApp) go here */
SemaphoreHandle_t xSemScan;

void InitGPIO(void);         /* I/O and Peripheral Initialization */

void PollSwitchesTask ( void * pvParameters);
void ScanLEDsTask ( void * pvParameters);