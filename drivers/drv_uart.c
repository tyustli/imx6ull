/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2020-07-02     tyustli   first version
 */

#include "rtconfig.h"

#ifdef BSP_USING_UART

#include "drv_uart.h"

static struct rt_serial_device uart_obj;

static void uart_isr(struct rt_serial_device *device_serial)
{
    /* If new data arrived. */
    if ((UART_GetStatusFlag(UART1, kUART_RxDataReadyFlag)))
    {
        rt_hw_serial_isr(&uart_obj, RT_SERIAL_EVENT_RX_IND);
    }
}

static void UART1_IRQHandler(void)
{
    /* enter interrupt */
    rt_interrupt_enter();

    uart_isr(&uart_obj);

    /* leave interrupt */
    rt_interrupt_leave();
}

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

    return;
}


static rt_err_t imx6ull_configure(struct rt_serial_device *serial, struct serial_configure *cfg)
{
    return RT_EOK;
}

static rt_err_t imx6ull_control(struct rt_serial_device *serial, int cmd, void *arg)
{
    switch(cmd)
    {
    case RT_DEVICE_CTRL_CLR_INT:
        DisableIRQ(UART1_IRQn);
        break;
    case RT_DEVICE_CTRL_SET_INT:
        UART_EnableInterrupts(UART1, kUART_RxDataReadyEnable);
        EnableIRQ(UART1_IRQn);
        SystemInstallIrqHandler(UART1_IRQn, (system_irq_handler_t)UART1_IRQHandler, NULL);
        break;
    default:
        break;
    }
    return RT_EOK;
}

static int imx6ull_putc(struct rt_serial_device *serial, char c)
{
    while(!UART_GetStatusFlag(UART1, kUART_TxEmptyFlag));
    UART_WriteByte(UART1, c);

    return 1;
}

static int imx6ull_getc(struct rt_serial_device *serial)
{
    int ch = -1;
    if ((UART_GetStatusFlag(UART1, kUART_RxDataReadyFlag)))
    {
        ch = UART_ReadByte(UART1);
    }
    else
    {
        ch = -1;
    }

    return ch;
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

    uart_obj.ops    = &imx6ull_uart_ops;
    uart_obj.config = config;

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

    rt_hw_serial_register(&uart_obj,
                         "uart1",
                         RT_DEVICE_FLAG_RDWR | RT_DEVICE_FLAG_INT_RX | RT_DEVICE_FLAG_INT_TX,
                         NULL);

    return 0;
}

#endif /* BSP_USING_UART */

/*************************** end of file *******************************/
