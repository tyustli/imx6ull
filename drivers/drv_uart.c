/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2020-07-02     tyustli   first version
 */

#include "drv_uart.h"

static struct rt_serial_device uart_config;

static void uart_init(void)
{
    UART1->UCR1 &= ~(1 << 0);
    UART1->UCR2 &= ~(1 << 0);
    while ((UART1->UCR2 & 0x1) == 0);
    UART1->UCR1 = 0;
    UART1->UCR1 &= ~(1 << 14);
    UART1->UCR2 |= (1 << 14) | (1 << 5) | (1 << 2) | (1 << 1);
    UART1->UCR3 |= 1 << 2;
    UART1->UFCR = 5 << 7; 
    UART1->UBIR = 71;
    UART1->UBMR = 3124;
    UART1->UCR1 |= (1 << 0);
}

static rt_err_t imx6ull_configure(struct rt_serial_device *serial, struct serial_configure *cfg)
{
    return RT_EOK;
}

static rt_err_t imx6ull_control(struct rt_serial_device *serial, int cmd, void *arg)
{
    return RT_EOK;
}

static int imx6ull_putc(struct rt_serial_device *serial, char c)
{
    while (((UART1->USR2 >> 3) & 0X01) == 0);
    UART1->UTXD = c & 0XFF;

    return 1;
}

static int imx6ull_getc(struct rt_serial_device *serial)
{
    while ((UART1->USR2 & 0x1) == 0);
    return UART1->URXD;
}

static rt_size_t imx6ull_dma_transmit(struct rt_serial_device *serial, rt_uint8_t *buf, rt_size_t size, int direction)
{
    return RT_EOK;
}

static const struct rt_uart_ops imx6ull_uart_ops =
{
    .configure = imx6ull_configure,
    .control = imx6ull_control,
    .putc = imx6ull_putc,
    .getc = imx6ull_getc,
    .dma_transmit = imx6ull_dma_transmit,
};

int rt_hw_uart_init(void)
{

    struct serial_configure config = RT_SERIAL_CONFIG_DEFAULT;

    uart_config.ops    = &imx6ull_uart_ops;
    uart_config.config = config;

    /* init uart io */
    IOMUXC_SetPinMux(IOMUXC_UART1_RX_DATA_UART1_RX, 0U);
    IOMUXC_SetPinConfig(IOMUXC_UART1_RX_DATA_UART1_RX, 
                        IOMUXC_SW_PAD_CTL_PAD_DSE(2U) |
                        IOMUXC_SW_PAD_CTL_PAD_SPEED(2U) |
                        IOMUXC_SW_PAD_CTL_PAD_PKE_MASK);

    IOMUXC_SetPinMux(IOMUXC_UART1_TX_DATA_UART1_TX, 0U);
    IOMUXC_SetPinConfig(IOMUXC_UART1_TX_DATA_UART1_TX, 
                        IOMUXC_SW_PAD_CTL_PAD_DSE(2U) |
                        IOMUXC_SW_PAD_CTL_PAD_SPEED(2U) |
                        IOMUXC_SW_PAD_CTL_PAD_PKE_MASK);

    uart_init();

    rt_hw_serial_register(&uart_config,
                         "uart1",
                         RT_DEVICE_FLAG_RDWR | RT_DEVICE_FLAG_INT_RX | RT_DEVICE_FLAG_INT_TX,
                         NULL);

    return 0;
}
