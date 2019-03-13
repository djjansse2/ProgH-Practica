/*
 * main.c
 *
 *  Created on: Feb 25, 2019
 *      Author: Kayne
 */


//AXI GPIO driver
#include "xgpio.h"

//send data over UART
#include "xil_printf.h"

//information about AXI peripherals
#include "xparameters.h"

int main()
{
	XGpio gpio;
	u32 btn, led;

	XGpio_Initialize(&gpio, 0);

	XGpio_SetDataDirection(&gpio, 2, 0x00000000); // set LED GPIO channel tristates to All Output
	XGpio_SetDataDirection(&gpio, 1, 0xFFFFFFFF); // set BTN GPIO channel tristates to All Input

	while (1)
	{
		btn = XGpio_DiscreteRead(&gpio, 1);
		XGpio_DiscreteWrite(&gpio, 2, btn);
		//Vanaf hier diet niet toe



		char buffer [16];
		itoa(btn,buffer,2);
		xil_printf("\rbutton state: %s\n",buffer);
	}
}