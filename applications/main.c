/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2020-07-02     tyustli   first version
 */

#include <rtthread.h>
#include "board.h"
#include "fsl_gpio.h"

int main(int argc, char *argv[])
{
    gpio_pin_config_t led_config = {
        kGPIO_DigitalOutput, 
        0,
        kGPIO_NoIntmode,
    };

    GPIO_PinInit(GPIO1, 3, &led_config);

    while(1)
    {
        GPIO_WritePinOutput(GPIO1, 3, 1);
        rt_thread_mdelay(100);
        GPIO_WritePinOutput(GPIO1, 3, 0);
        rt_thread_mdelay(100);
    }

    return 0;
}
