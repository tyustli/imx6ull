/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2020-07-30     tyustli   first version
 */

#ifndef __DRV_PIN_H
#define __DRV_PIN_H

#ifdef __cplusplus
extern "C"
{
#endif

#include "board.h"
#include "fsl_gpio.h"

#define  IMX6ULL_PORT(port)              GPIO##port##_BASE
#define  ARRAY_LEN(array)                sizeof(array) / sizeof(array[0])
#define  IMX6ULL_GET_PIN(PORTx, PIN)     (rt_base_t)((32 * (((rt_base_t)IMX6ULL_PORT(PORTx) - (rt_base_t)GPIO1_BASE) / (GPIO2_BASE - GPIO1_BASE))) + PIN)
#define  IMX6ULL_PIN(index, gpio, gpio_index) \
   {                                          \
       index, GPIO##gpio, gpio_index          \
   }

/* imx6ull GPIO driver */
struct imx6ull_pin_index
{
    int index;
    GPIO_Type *gpio;
    uint32_t pin;
};

struct pin_irq_map
{
    rt_uint8_t irqindex;
    IRQn_Type irqno;
};

int rt_hw_pin_init(void);
struct imx6ull_pin_index *get_pin(uint8_t pin);

#ifdef __cplusplus
}
#endif

#endif /* __DRV_PIN_H */

/*************************** end of file *******************************/
