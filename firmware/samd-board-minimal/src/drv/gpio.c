/*
 * gpio.c
 *
 * Created: 11/05/2021 16:32:54
 *  Author: Joshua
 */

#include "gpio.h"

void gpio_port_set_inputs(uint32_t port_mask) {
	for (uint8_t i = 0; i < 32; i++)
		if (port_mask & 1 << i) PORT->Group[PORTA].PINCFG[i].bit.INEN = 1;

	PORT->Group[GPIO_PORT].DIRCLR.reg = port_mask;
}

void gpio_port_set_pullups(uint32_t port_mask) {
	for (uint8_t i = 0; i < 32; i++)
		if (port_mask & 1 << i) PORT->Group[GPIO_PORT].PINCFG[i].bit.PULLEN = 1;

	PORT->Group[GPIO_PORT].OUTSET.reg = port_mask;
}

void gpio_port_set_outputs(uint32_t port_mask) {
	PORT->Group[GPIO_PORT].DIRSET.reg = port_mask;
	PORT->Group[GPIO_PORT].OUTCLR.reg = port_mask;
}

void gpio_pin_set_pmux(uint8_t pin_no, uint8_t pmux_val) {
	/* Enable alternate pin function via pin mux */
	PORT->Group[GPIO_PORT].PINCFG[pin_no].bit.PMUXEN = 1;

	/* Odd or even */
	if (pin_no & 1) PORT->Group[GPIO_PORT].PMUX[pin_no >> 1].bit.PMUXO = pmux_val;
	else
		PORT->Group[GPIO_PORT].PMUX[pin_no >> 1].bit.PMUXE = pmux_val;
}

void gpio_pin_clear_pmux(uint8_t pin_no) {
	PORT->Group[GPIO_PORT].PINCFG[pin_no].bit.PMUXEN = 0;
}