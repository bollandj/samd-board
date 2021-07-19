/*
 * gpio.h
 *
 * Created: 11/05/2021 16:33:02
 *  Author: Joshua
 */

#ifndef GPIO_H_
#define GPIO_H_

#include "sam.h"
#include "pinout.h"

void gpio_port_set_inputs(uint32_t port_mask);
void gpio_port_set_pullups(uint32_t port_mask);
void gpio_port_set_outputs(uint32_t port_mask);

void gpio_pin_set_pmux(uint8_t pin_no, uint8_t pmux_val);
void gpio_pin_clear_pmux(uint8_t pin_no);

inline void gpio_port_set(uint32_t port_mask) { PORT->Group[GPIO_PORT].OUTSET.reg = port_mask; }
inline void gpio_port_clear(uint32_t port_mask) { PORT->Group[GPIO_PORT].OUTCLR.reg = port_mask; }
inline void gpio_port_toggle(uint32_t port_mask) { PORT->Group[GPIO_PORT].OUTTGL.reg = port_mask; }

#endif /* GPIO_H_ */
