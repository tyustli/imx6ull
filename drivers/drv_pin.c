/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2020-07-02     tyustli   first version
 */

#include <rtconfig.h>

#ifdef BSP_USING_GPIO
#include "drv_pin.h"
#include "fsl_gpio.h"

static const struct imx6ull_pin_index imx6ull_pins[] = 
{
#if defined(GPIO1)
    __IMX6ULL_PIN(0 , 1, 0),
    __IMX6ULL_PIN(1 , 1, 1),
    __IMX6ULL_PIN(2 , 1, 2),
    __IMX6ULL_PIN(3 , 1, 3),
    __IMX6ULL_PIN(4 , 1, 4),
    __IMX6ULL_PIN(5 , 1, 5),
    __IMX6ULL_PIN(6 , 1, 6),
    __IMX6ULL_PIN(7 , 1, 7),
    __IMX6ULL_PIN(8 , 1, 8),
    __IMX6ULL_PIN(9 , 1, 9),
    __IMX6ULL_PIN(10, 1, 10),
    __IMX6ULL_PIN(11, 1, 11),
    __IMX6ULL_PIN(12, 1, 12),
    __IMX6ULL_PIN(13, 1, 13),
    __IMX6ULL_PIN(14, 1, 14),
    __IMX6ULL_PIN(15, 1, 15),
    __IMX6ULL_PIN(16, 1, 16),
    __IMX6ULL_PIN(17, 1, 17),
    __IMX6ULL_PIN(18, 1, 18),
    __IMX6ULL_PIN(19, 1, 19),
    __IMX6ULL_PIN(20, 1, 20),
    __IMX6ULL_PIN(21, 1, 21),
    __IMX6ULL_PIN(22, 1, 22),
    __IMX6ULL_PIN(23, 1, 23),
    __IMX6ULL_PIN(24, 1, 24),
    __IMX6ULL_PIN(25, 1, 25),
    __IMX6ULL_PIN(26, 1, 26),
    __IMX6ULL_PIN(27, 1, 27),
    __IMX6ULL_PIN(28, 1, 28),
    __IMX6ULL_PIN(29, 1, 29),
    __IMX6ULL_PIN(30, 1, 30),
    __IMX6ULL_PIN(31, 1, 31),
#endif /* GPIO1 */
#if defined(GPIO2)
    __IMX6ULL_PIN(32, 2, 0),
    __IMX6ULL_PIN(33, 2, 1),
    __IMX6ULL_PIN(34, 2, 2),
    __IMX6ULL_PIN(35, 2, 3),
    __IMX6ULL_PIN(36, 2, 4),
    __IMX6ULL_PIN(37, 2, 5),
    __IMX6ULL_PIN(38, 2, 6),
    __IMX6ULL_PIN(39, 2, 7),
    __IMX6ULL_PIN(40, 2, 8),
    __IMX6ULL_PIN(41, 2, 9),
    __IMX6ULL_PIN(42, 2, 10),
    __IMX6ULL_PIN(43, 2, 11),
    __IMX6ULL_PIN(44, 2, 12),
    __IMX6ULL_PIN(45, 2, 13),
    __IMX6ULL_PIN(46, 2, 14),
    __IMX6ULL_PIN(47, 2, 15),
    __IMX6ULL_PIN(48, 2, 16),
    __IMX6ULL_PIN(49, 2, 17),
    __IMX6ULL_PIN(50, 2, 18),
    __IMX6ULL_PIN(51, 2, 19),
    __IMX6ULL_PIN(52, 2, 20),
    __IMX6ULL_PIN(53, 2, 21),
    __IMX6ULL_PIN(54, 2, 22),
    __IMX6ULL_PIN(55, 2, 23),
    __IMX6ULL_PIN(56, 2, 24),
    __IMX6ULL_PIN(57, 2, 25),
    __IMX6ULL_PIN(58, 2, 26),
    __IMX6ULL_PIN(59, 2, 27),
    __IMX6ULL_PIN(60, 2, 28),
    __IMX6ULL_PIN(61, 2, 29),
    __IMX6ULL_PIN(62, 2, 30),
    __IMX6ULL_PIN(63, 2, 31),
#endif /* GPIO2 */

#if defined(GPIO3)
    __IMX6ULL_PIN(64, 3, 0),
    __IMX6ULL_PIN(65, 3, 1),
    __IMX6ULL_PIN(66, 3, 2),
    __IMX6ULL_PIN(67, 3, 3),
    __IMX6ULL_PIN(68, 3, 4),
    __IMX6ULL_PIN(69, 3, 5),
    __IMX6ULL_PIN(70, 3, 6),
    __IMX6ULL_PIN(71, 3, 7),
    __IMX6ULL_PIN(72, 3, 8),
    __IMX6ULL_PIN(73, 3, 9),
    __IMX6ULL_PIN(74, 3, 10),
    __IMX6ULL_PIN(75, 3, 11),
    __IMX6ULL_PIN(76, 3, 12),
    __IMX6ULL_PIN(77, 3, 13),
    __IMX6ULL_PIN(78, 3, 14),
    __IMX6ULL_PIN(79, 3, 15),
    __IMX6ULL_PIN(80, 3, 16),
    __IMX6ULL_PIN(81, 3, 17),
    __IMX6ULL_PIN(82, 3, 18),
    __IMX6ULL_PIN(83, 3, 19),
    __IMX6ULL_PIN(84, 3, 20),
    __IMX6ULL_PIN(85, 3, 21),
    __IMX6ULL_PIN(86, 3, 22),
    __IMX6ULL_PIN(87, 3, 23),
    __IMX6ULL_PIN(88, 3, 24),
    __IMX6ULL_PIN(89, 3, 25),
    __IMX6ULL_PIN(90, 3, 26),
    __IMX6ULL_PIN(91, 3, 27),
    __IMX6ULL_PIN(92, 3, 28),
    __IMX6ULL_PIN(93, 3, 29),
    __IMX6ULL_PIN(94, 3, 30),
    __IMX6ULL_PIN(95, 3, 31),
#endif /* GPIO3 */

#if defined(GPIO4)
    __IMX6ULL_PIN(96, 4, 0),
    __IMX6ULL_PIN(97, 4, 1),
    __IMX6ULL_PIN(98, 4, 2),
    __IMX6ULL_PIN(99, 4, 3),
    __IMX6ULL_PIN(100, 4, 4),
    __IMX6ULL_PIN(101, 4, 5),
    __IMX6ULL_PIN(102, 4, 6),
    __IMX6ULL_PIN(103, 4, 7),
    __IMX6ULL_PIN(104, 4, 8),
    __IMX6ULL_PIN(105, 4, 9),
    __IMX6ULL_PIN(106, 4, 10),
    __IMX6ULL_PIN(107, 4, 11),
    __IMX6ULL_PIN(108, 4, 12),
    __IMX6ULL_PIN(109, 4, 13),
    __IMX6ULL_PIN(110, 4, 14),
    __IMX6ULL_PIN(111, 4, 15),
    __IMX6ULL_PIN(112, 4, 16),
    __IMX6ULL_PIN(113, 4, 17),
    __IMX6ULL_PIN(114, 4, 18),
    __IMX6ULL_PIN(115, 4, 19),
    __IMX6ULL_PIN(116, 4, 20),
    __IMX6ULL_PIN(117, 4, 21),
    __IMX6ULL_PIN(118, 4, 22),
    __IMX6ULL_PIN(119, 4, 23),
    __IMX6ULL_PIN(120, 4, 24),
    __IMX6ULL_PIN(121, 4, 25),
    __IMX6ULL_PIN(122, 4, 26),
    __IMX6ULL_PIN(123, 4, 27),
    __IMX6ULL_PIN(124, 4, 28),
    __IMX6ULL_PIN(125, 4, 29),
    __IMX6ULL_PIN(126, 4, 30),
    __IMX6ULL_PIN(127, 4, 31),
#endif /* GPIO4 */

#if defined(GPIO5)
    __IMX6ULL_PIN(128, 5, 0),
    __IMX6ULL_PIN(129, 5, 1),
    __IMX6ULL_PIN(130, 5, 2),
    __IMX6ULL_PIN(131, 5, 3),
    __IMX6ULL_PIN(132, 5, 4),
    __IMX6ULL_PIN(133, 5, 5),
    __IMX6ULL_PIN(134, 5, 6),
    __IMX6ULL_PIN(135, 5, 7),
    __IMX6ULL_PIN(136, 5, 8),
    __IMX6ULL_PIN(137, 5, 9),
    __IMX6ULL_PIN(138, 5, 10),
    __IMX6ULL_PIN(139, 5, 11),
    __IMX6ULL_PIN(140, 5, 12),
    __IMX6ULL_PIN(141, 5, 13),
    __IMX6ULL_PIN(142, 5, 14),
    __IMX6ULL_PIN(143, 5, 15),
    __IMX6ULL_PIN(144, 5, 16),
    __IMX6ULL_PIN(145, 5, 17),
    __IMX6ULL_PIN(146, 5, 18),
    __IMX6ULL_PIN(147, 5, 19),
    __IMX6ULL_PIN(148, 5, 20),
    __IMX6ULL_PIN(149, 5, 21),
    __IMX6ULL_PIN(150, 5, 22),
    __IMX6ULL_PIN(151, 5, 23),
    __IMX6ULL_PIN(152, 5, 24),
    __IMX6ULL_PIN(153, 5, 25),
    __IMX6ULL_PIN(154, 5, 26),
    __IMX6ULL_PIN(155, 5, 27),
    __IMX6ULL_PIN(156, 5, 28),
    __IMX6ULL_PIN(157, 5, 29),
    __IMX6ULL_PIN(158, 5, 30),
    __IMX6ULL_PIN(159, 5, 31),
#endif /* GPIO5 */
};

static const struct imx6ull_pin_index *get_pin(uint8_t pin)
{
    const struct imx6ull_pin_index *index;

    if (pin < ARRAY_LEN(imx6ull_pins))
    {
        index = &imx6ull_pins[pin];
        if (index->index == -1)
            index = RT_NULL;
    }
    else
    {
        index = RT_NULL;
    }

    return index;
};

static void imx6ull_pin_mode(struct rt_device *device, rt_base_t pin, rt_base_t mode)
{
    gpio_pin_config_t led_config;
    const struct imx6ull_pin_index *index;

    index = get_pin(pin);
    if (index == RT_NULL)
    {
        return;
    }

    led_config.interruptMode = kGPIO_NoIntmode;
    led_config.outputLogic = 0;

    if(mode == PIN_MODE_OUTPUT)
    {
        led_config.direction = kGPIO_DigitalOutput;
    }
    else if(mode == PIN_MODE_INPUT)
    {
        led_config.direction = kGPIO_DigitalInput;
    }

    GPIO_PinInit(index->gpio, index->pin, &led_config);
}

static void  imx6ull_pin_write(struct rt_device *device, rt_base_t pin, rt_base_t value)
{
    const struct imx6ull_pin_index *index;

    index = get_pin(pin);
    if (index == RT_NULL)
    {
        return;
    }

    GPIO_WritePinOutput(index->gpio, index->pin, value);
}

static int  imx6ull_pin_read(struct rt_device *device, rt_base_t pin)
{
    int value;
    const struct imx6ull_pin_index *index;

    value = PIN_LOW;

    index = get_pin(pin);
    if (index == RT_NULL)
    {
        return value;
    }

    value = GPIO_ReadPinInput(index->gpio, index->pin);

    return value;
}

static rt_err_t  imx6ull_pin_attach_irq(struct rt_device *device, rt_int32_t pin, rt_uint32_t mode, void (*hdr)(void *args), void *args)
{
    rt_err_t ret = -RT_ERROR;

    return ret;
}

static rt_err_t  imx6ull_pin_detach_irq(struct rt_device *device, rt_int32_t pin)
{
    rt_err_t ret = -RT_ERROR;

    return ret;
}

static rt_err_t  imx6ull_pin_irq_enable(struct rt_device *device, rt_base_t pin, rt_uint32_t enabled)
{
    rt_err_t ret = -RT_ERROR;

    return ret;
}
static const struct rt_pin_ops imx6ull_pin_ops = 
{
    .pin_mode = imx6ull_pin_mode,
    .pin_write = imx6ull_pin_write,
    .pin_read = imx6ull_pin_read,
    .pin_attach_irq = imx6ull_pin_attach_irq,
    .pin_detach_irq = imx6ull_pin_detach_irq,
    .pin_irq_enable = imx6ull_pin_irq_enable,
};

int rt_hw_pin_init(void)
{
    rt_err_t ret = RT_ERROR;
    ret = rt_device_pin_register("pin", &imx6ull_pin_ops, RT_NULL);
    if (ret != RT_EOK)
    {
        rt_kprintf("imx6ull register pin failed\r\n");
        return -RT_ERROR;
    }

    return RT_EOK;
}
INIT_BOARD_EXPORT(rt_hw_pin_init);

#endif /* BSP_USING_GPIO */

/*************************** end of file *******************************/
