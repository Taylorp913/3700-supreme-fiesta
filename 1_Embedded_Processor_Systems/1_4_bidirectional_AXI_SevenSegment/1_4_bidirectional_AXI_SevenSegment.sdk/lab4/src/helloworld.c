/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xgpio.h"

#define SEVENSEGMENTDRIVER_BASEADDR 0x44A00000

void print(char *str);

int main ()
{
	init_platform();
	u32 enable = 0;
	u32 dec = 0;
	u32 bcd = 1;
	u32 value = 0;
	// DECLARE THESE VARIABLES :
	u32 ones, tens, hundreds, thousands;
	while(1){
		// Write data to the three AXI registers :
		Xil_Out32(SEVENSEGMENTDRIVER_BASEADDR, value);
		Xil_Out32(SEVENSEGMENTDRIVER_BASEADDR+0x4, bcd);
		Xil_Out32(SEVENSEGMENTDRIVER_BASEADDR+0x8, dec);
		Xil_Out32(SEVENSEGMENTDRIVER_BASEADDR+0xC, enable);
		// ADD THESE LINES = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
		// Read data from the four AXI registers :
		ones = 		Xil_In32(SEVENSEGMENTDRIVER_BASEADDR);
		tens = 		Xil_In32(SEVENSEGMENTDRIVER_BASEADDR+0x4);
		hundreds = 	Xil_In32(SEVENSEGMENTDRIVER_BASEADDR+0x8);
		thousands = Xil_In32(SEVENSEGMENTDRIVER_BASEADDR+0xC);

		xil_printf("Digits are: %d_%d_%d_%d\n", thousands , hundreds , tens , ones );

		// = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
		value = value + 1;
		enable = !enable & 0x1;
		MB_Sleep(600);

	}

	cleanup_platform();
	return 0;
}
