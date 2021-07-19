#ifndef PINOUT_H
#define PINOUT_H

/* 
    GPIO 
*/

#define PORTA 0 // PORTA group number

#define GPIO_PORT PORTA

#define LED0_PORT PORT_PA09
#define LED0_PIN  PIN_PA09

#define LED1_PORT PORT_PA27
#define LED1_PIN  PIN_PA27

#define SW0_PORT PORT_PA28
#define SW0_PIN  PIN_PA28

/* 
    USART
*/

#define USART_TX_PORT     PORT_PA16
#define USART_TX_PIN      PIN_PA16
#define USART_TX_PMUX_Val PORT_PMUX_PMUXE_D_Val
#define USART_TXPO_Val    1 // PAD[2]      

#define USART_RX_PORT     PORT_PA17
#define USART_RX_PIN      PIN_PA17
#define USART_RX_PMUX_Val PORT_PMUX_PMUXE_D_Val
#define USART_RXPO_Val    3 // PAD[3]

#endif // PINOUT_H
