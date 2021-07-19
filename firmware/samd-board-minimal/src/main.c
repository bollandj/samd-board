
#include "sam.h"

#include "pinout.h"

#include "clocks.h"
#include "gpio.h"
#include "systick.h"

#define MAX_COUNT 500

uint32_t sysTickCount=0;

void delay() { for (volatile uint16_t x = 0; x < 4096; x++) __asm ("nop"); }

int main(void) {
	SystemInit();

	clock_init();
	systick_init();

	gpio_port_set_outputs(LED0_PORT | LED1_PORT);
	gpio_port_set(LED0_PORT);

	while (1) {

	}
}

void SysTick_Handler() {
	sysTickCount++;
	if (sysTickCount == MAX_COUNT) {
		sysTickCount = 0;
		gpio_port_toggle(LED0_PORT | LED1_PORT);
	}
}



	


