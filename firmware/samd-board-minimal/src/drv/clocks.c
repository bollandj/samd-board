
#include "clocks.h"

void clock_init() {
	/* Enable 8MHz internal oscillator, disable prescaler */
	SYSCTRL->OSC8M.bit.ENABLE = 1;
	SYSCTRL->OSC8M.bit.PRESC = 0;

	/* Set GCLK0 clock source to 8MHz internal oscillator, disable prescaler */
	GCLK->GENDIV.reg = GCLK_GENDIV_ID(0) | GCLK_GENDIV_DIV(1);
	GCLK->GENCTRL.reg = GCLK_GENCTRL_ID(0) | GCLK_GENCTRL_SRC_OSC8M | GCLK_GENCTRL_GENEN;
	while (GCLK->STATUS.bit.SYNCBUSY);

	/* Set GCLK_1M clock source to 8MHz internal oscillator, /8 prescaler (1MHz) */
	GCLK->GENDIV.reg = GCLK_GENDIV_ID(GCLK_1M) | GCLK_GENDIV_DIV(8);
	GCLK->GENCTRL.reg = GCLK_GENCTRL_ID(GCLK_1M) | GCLK_GENCTRL_SRC_OSC8M | GCLK_GENCTRL_GENEN;
	while (GCLK->STATUS.bit.SYNCBUSY);

	/* Update core frequency */
	SystemCoreClock = 8000000UL;
}