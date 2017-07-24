/*
    FreeRTOS V8.2.3 - Copyright (C) 2015 Real Time Engineers Ltd.
    All rights reserved

    VISIT http://www.FreeRTOS.org TO ENSURE YOU ARE USING THE LATEST VERSION.

    This file was modified from part of the FreeRTOS distribution.

    FreeRTOS is free software; you can redistribute it and/or modify it under
    the terms of the GNU General Public License (version 2) as published by the
    Free Software Foundation >>>> AND MODIFIED BY <<<< the FreeRTOS exception.

    ***************************************************************************
    >>!   NOTE: The modification to the GPL is included to allow you to     !<<
    >>!   distribute a combined work that includes FreeRTOS without being   !<<
    >>!   obliged to provide the source code for proprietary components     !<<
    >>!   outside of the FreeRTOS kernel.                                   !<<
    ***************************************************************************

    FreeRTOS is distributed in the hope that it will be useful, but WITHOUT ANY
    WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
    FOR A PARTICULAR PURPOSE.  Full license text is available on the following
    link: http://www.freertos.org/a00114.html

    ***************************************************************************
     *                                                                       *
     *    FreeRTOS provides completely free yet professionally developed,    *
     *    robust, strictly quality controlled, supported, and cross          *
     *    platform software that is more than just the market leader, it     *
     *    is the industry's de facto standard.                               *
     *                                                                       *
     *    Help yourself get started quickly while simultaneously helping     *
     *    to support the FreeRTOS project by purchasing a FreeRTOS           *
     *    tutorial book, reference manual, or both:                          *
     *    http://www.FreeRTOS.org/Documentation                              *
     *                                                                       *
    ***************************************************************************

    http://www.FreeRTOS.org/FAQHelp.html - Having a problem?  Start by reading
    the FAQ page "My application does not run, what could be wrong?".  Have you
    defined configASSERT()?

    http://www.FreeRTOS.org/support - In return for receiving this top quality
    embedded software for free we request you assist our global community by
    participating in the support forum.

    http://www.FreeRTOS.org/training - Investing in training allows your team to
    be as productive as possible as early as possible.  Now you can receive
    FreeRTOS training directly from Richard Barry, CEO of Real Time Engineers
    Ltd, and the world's leading authority on the world's leading RTOS.

    http://www.FreeRTOS.org/plus - A selection of FreeRTOS ecosystem products,
    including FreeRTOS+Trace - an indispensable productivity tool, a DOS
    compatible FAT file system, and our tiny thread aware UDP/IP stack.

    http://www.FreeRTOS.org/labs - Where new FreeRTOS products go to incubate.
    Come and try FreeRTOS+TCP, our new open source TCP/IP stack for FreeRTOS.

    http://www.OpenRTOS.com - Real Time Engineers ltd. license FreeRTOS to High
    Integrity Systems ltd. to sell under the OpenRTOS brand.  Low cost OpenRTOS
    licenses offer ticketed support, indemnification and commercial middleware.

    http://www.SafeRTOS.com - High Integrity Systems also provide a safety
    engineered and independently SIL3 certified version for use in safety and
    mission critical applications that require provable dependability.

    1 tab == 4 spaces!
*/

/* Kernel includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "queue.h"

/* User application includes */
#include "user.h"
#include "OLED.h"
#include "OLED/OledChar.h"
#include "OLED/OledGrph.h"
#include "UART.h"

/* Hardware specific includes. */
#include "ConfigPerformance.h"

/* Core configuration fuse settings */
#if defined(__32MZ2048ECM144) || defined(__32MZ2048ECH144)
	#pragma config FMIIEN = OFF, FETHIO = OFF, PGL1WAY = OFF, PMDL1WAY = OFF, IOL1WAY = OFF, FUSBIDIO = OFF
	#pragma config FNOSC = SPLL, FSOSCEN = OFF, IESO = OFF, POSCMOD = EC
	#pragma config OSCIOFNC = OFF, FCKSM = CSECMD, FWDTEN = OFF, FDMTEN = OFF
	#pragma config DMTINTV = WIN_127_128, WDTSPGM = STOP, WINDIS= NORMAL
	#pragma config WDTPS = PS1048576, FWDTWINSZ = WINSZ_25, DMTCNT = DMT31
	#pragma config FPLLIDIV = DIV_3, FPLLRNG = RANGE_13_26_MHZ, FPLLICLK = PLL_POSC
	#pragma config FPLLMULT = MUL_50, FPLLODIV = DIV_2, UPLLFSEL = FREQ_12MHZ, UPLLEN = OFF
	#pragma config EJTAGBEN = NORMAL, DBGPER = PG_ALL, FSLEEP = OFF, FECCCON = OFF_UNLOCKED
	#pragma config BOOTISA = MIPS32, TRCEN = ON, ICESEL = ICS_PGx2, JTAGEN = OFF, DEBUG = ON
	#pragma config CP = OFF
#elif defined(__32MZ2048EFM144) || defined(__32MZ2048EFH144) || defined(__32MZ2048EFH100)
	#pragma config FMIIEN = OFF, FETHIO = OFF, PGL1WAY = OFF, PMDL1WAY = OFF, IOL1WAY = OFF, FUSBIDIO = OFF
	#pragma config FNOSC = SPLL, FSOSCEN = OFF, IESO = OFF, POSCMOD = EC
	#pragma config OSCIOFNC = OFF, FCKSM = CSECMD, FWDTEN = OFF, FDMTEN = OFF
	#pragma config DMTINTV = WIN_127_128, WDTSPGM = STOP, WINDIS= NORMAL
	#pragma config WDTPS = PS1048576, FWDTWINSZ = WINSZ_25, DMTCNT = DMT31
	#pragma config FPLLIDIV = DIV_3, FPLLRNG = RANGE_5_10_MHZ, FPLLICLK = PLL_POSC
	#pragma config FPLLMULT = MUL_50, FPLLODIV = DIV_2, UPLLFSEL = FREQ_24MHZ

	#pragma config EJTAGBEN = NORMAL, DBGPER = PG_ALL, FSLEEP = OFF, FECCCON = OFF_UNLOCKED
	#pragma config BOOTISA = MIPS32, TRCEN = ON, ICESEL = ICS_PGx2, JTAGEN = OFF, DEBUG = ON
	#pragma config CP = OFF
#endif



/*-----------------------------------------------------------*/

/*
 * Set up the hardware ready to run this demo.
 */
static void prvSetupHardware( void );

static void CreateTaskSyncStructures(void);

/*-----------------------------------------------------------*/
 
/*
 * Create the demo tasks then start the scheduler.
 */
int main( void )
{
	/* Prepare the hardware to run this demo. */
	prvSetupHardware();
    /* Set up app-specific intertask synchronization structures */
    CreateTaskSyncStructures();

    InitApp();
    OledSetCursor(0,0);
    OledPutString("RTOS Lab");

    // TODO: Add UART4 test code here
    UART4_puts("RTOS Lab!\n\r");
    // Wait until serial transmission is done
    while (!U4STAbits.TRMT)
        ;
    
    xTaskCreate(Task1, "Task 1", configMINIMAL_STACK_SIZE, NULL, 3, NULL );
    xTaskCreate(Task2, "Task 2", configMINIMAL_STACK_SIZE, NULL, 2, NULL );
    
    // TODO: Create task ClockTask here
    xTaskCreate(ClockTask, "Clock Task", configMINIMAL_STACK_SIZE, NULL, 1, NULL );
    // TODO: Create SerialInTask here
    xTaskCreate(SerialInTask, "Serial In Task", configMINIMAL_STACK_SIZE, NULL, 4, NULL );

    vTaskStartScheduler();
    
    while (1) // If code reaches here, then error occurred due to insufficient heap memory
        ;
	return 0;
}
/*-----------------------------------------------------------*/

static void prvSetupHardware( void )
{
	/* Configure the hardware for maximum performance. */
	vHardwareConfigurePerformance();

	/* Setup to use the external interrupt controller. */
	vHardwareUseMultiVectoredInterrupts();

	portDISABLE_INTERRUPTS();
    InitApp();
}
/*-----------------------------------------------------------*/
void CreateTaskSyncStructures(void) {
    // TODO: Create mutex here
    xMutexOLED = xSemaphoreCreateMutex();
    if( xMutexOLED == NULL )
    {  // Error - the semaphore was not created successfully.
        while (1)
            ;
    } 
    // TODO: Create semaphore here
    xSemTrigger = xSemaphoreCreateBinary();
    if( xSemTrigger == NULL )
    {  // Error - the semaphore was not created successfully.
        while (1)
            ;
    } 
    // TODO: Add queue creation code here
    xQueueSerIn = xQueueCreate(64, sizeof(char));
    if (xQueueSerIn == NULL)
    {  // Error - the queue was not created successfully.
        while (1)
            ;
    } 
    xQueueSerOut = xQueueCreate(64, sizeof(char));
    if (xQueueSerOut == NULL)
    {  // Error - the queue was not created successfully.
        while (1)
            ;
    } 
}
/*-----------------------------------------------------------*/
void vApplicationStackOverflowHook( TaskHandle_t pxTask, char *pcTaskName )
{
	( void ) pcTaskName;
	( void ) pxTask;

	/* Run time task stack overflow checking is performed if
	configCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2.  This hook	function is
	called if a task stack overflow is detected.  Note the system/interrupt
	stack is not checked. */
	taskDISABLE_INTERRUPTS();
	for( ;; );
}
/*-----------------------------------------------------------*/

void vApplicationTickHook( void )
{
	/* This function will be called by each tick interrupt if
	configUSE_TICK_HOOK is set to 1 in FreeRTOSConfig.h.  User code can be
	added here, but the tick hook is called from an interrupt context, so
	code must not attempt to block, and only the interrupt safe FreeRTOS API
	functions can be used (those that end in FromISR()). */
}
/*-----------------------------------------------------------*/

extern void vAssertCalled( const char * pcFile, unsigned long ulLine )
{
volatile char *pcFileName;
volatile unsigned long ulLineNumber;

	/* Prevent things that are useful to view in the debugger from being
	optimised away. */
	pcFileName = ( char * ) pcFile;
	( void ) pcFileName;
	ulLineNumber = ulLine;

	/* Set ulLineNumber to 0 in the debugger to break out of this loop and
	return to the line that triggered the assert. */
	while( ulLineNumber != 0 )
	{
		__asm volatile( "NOP" );
		__asm volatile( "NOP" );
		__asm volatile( "NOP" );
		__asm volatile( "NOP" );
		__asm volatile( "NOP" );
	}
}
/*-----------------------------------------------------------*/

/* This function overrides the normal _weak_ generic handler. */
void _general_exception_handler(void)
{
static enum {
	EXCEP_IRQ = 0, 	/* interrupt */
	EXCEP_AdEL = 4, /* address error exception (load or ifetch) */
	EXCEP_AdES, 	/* address error exception (store) */
	EXCEP_IBE, 		/* bus error (ifetch) */
	EXCEP_DBE, 		/* bus error (load/store) */
	EXCEP_Sys, 		/* syscall */
	EXCEP_Bp, 		/* breakpoint */
	EXCEP_RI, 		/* reserved instruction */
	EXCEP_CpU, 		/* coprocessor unusable */
	EXCEP_Overflow,	/* arithmetic overflow */
	EXCEP_Trap, 	/* trap (possible divide by zero) */
	EXCEP_FPE = 15, /* floating point exception */
	EXCEP_IS1 = 16,	/* implementation specfic 1 */
	EXCEP_CEU, 		/* CorExtend Unuseable */
	EXCEP_C2E, 		/* coprocessor 2 */
	EXCEP_DSPDis = 26   /* DSP module disabled */
} _excep_code;

static unsigned long _epc_code;
static unsigned long _excep_addr;

	asm volatile( "mfc0 %0,$13" : "=r" (_epc_code) );
	asm volatile( "mfc0 %0,$14" : "=r" (_excep_addr) );

	_excep_code = ( _epc_code & 0x0000007C ) >> 2;

    for( ;; )
	{
		/* prevent compiler warning */
		(void) _excep_code;

		/* Examine _excep_code to identify the type of exception.  Examine
		_excep_addr to find the address that caused the exception */
		Nop();
		Nop();
		Nop();
	}
}
/*-----------------------------------------------------------*/

