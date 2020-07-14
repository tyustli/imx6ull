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

#if 0 

/* 自己定义寄存器 */
/* 
 * CCM相关寄存器地址 
 */
#define CCM_CCGR0 *((volatile unsigned int *)0X020C4068)
#define CCM_CCGR1 *((volatile unsigned int *)0X020C406C)

#define CCM_CCGR2 *((volatile unsigned int *)0X020C4070)
#define CCM_CCGR3 *((volatile unsigned int *)0X020C4074)
#define CCM_CCGR4 *((volatile unsigned int *)0X020C4078)
#define CCM_CCGR5 *((volatile unsigned int *)0X020C407C)
#define CCM_CCGR6 *((volatile unsigned int *)0X020C4080)

/* 
 * IOMUX相关寄存器地址 
 */
#define SW_MUX_GPIO1_IO03 *((volatile unsigned int *)0X020E0068)
#define SW_PAD_GPIO1_IO03 *((volatile unsigned int *)0X020E02F4)

/* 
 * GPIO1相关寄存器地址 
 */
#define GPIO1_DR *((volatile unsigned int *)0X0209C000)
#define GPIO1_GDIR *((volatile unsigned int *)0X0209C004)
#define GPIO1_PSR *((volatile unsigned int *)0X0209C008)
#define GPIO1_ICR1 *((volatile unsigned int *)0X0209C00C)
#define GPIO1_ICR2 *((volatile unsigned int *)0X0209C010)
#define GPIO1_IMR *((volatile unsigned int *)0X0209C014)
#define GPIO1_ISR *((volatile unsigned int *)0X0209C018)
#define GPIO1_EDGE_SEL *((volatile unsigned int *)0X0209C01C)

void clk_enable(void)
{
    CCM_CCGR0 = 0xffffffff;
    CCM_CCGR1 = 0xffffffff;
    CCM_CCGR2 = 0xffffffff;
    CCM_CCGR3 = 0xffffffff;
    CCM_CCGR4 = 0xffffffff;
    CCM_CCGR5 = 0xffffffff;
    CCM_CCGR6 = 0xffffffff;
}

void led_init(void)
{
    /* 1、初始化IO复用 */
    SW_MUX_GPIO1_IO03 = 0x5; /* 复用为GPIO1_IO03 */

    /* 2、、配置GPIO1_IO03的IO属性	
	 *bit 16:0 HYS关闭
	 *bit [15:14]: 00 默认下拉
     *bit [13]: 0 kepper功能
     *bit [12]: 1 pull/keeper使能
     *bit [11]: 0 关闭开路输出
     *bit [7:6]: 10 速度100Mhz
     *bit [5:3]: 110 R0/6驱动能力
     *bit [0]: 0 低转换率
     */
    SW_PAD_GPIO1_IO03 = 0X10B0;

    /* 3、初始化GPIO */
    GPIO1_GDIR = 0X0000008; /* GPIO1_IO03设置为输出 */

    /* 4、设置GPIO1_IO03输出低电平，打开LED0 */
    GPIO1_DR = 0X0;
}

void led_on(void)
{
    /* 
	 * 将GPIO1_DR的bit3清零	 
	 */
    GPIO1_DR &= ~(1 << 3);
}

void led_off(void)
{
    /*    
	 * 将GPIO1_DR的bit3置1
	 */
    GPIO1_DR |= (1 << 3);
}

void delay_short(volatile unsigned int n)
{
    while (n--)
    {
    }
}

void delay(volatile unsigned int n)
{
    while (n--)
    {
        delay_short(0x7ff);
    }
}

int main(int argc, char *argv[])
{
    clk_enable();
    led_init();

    while (1)
    {
        led_off();
        delay(500);

        led_on();
        delay(500);
    }

    return 0;
}
#endif

/* 使用 SDK 头文件 */
void clk_enable(void)
{
    CCM->CCGR0 = 0XFFFFFFFF;
    CCM->CCGR1 = 0XFFFFFFFF;

    CCM->CCGR2 = 0XFFFFFFFF;
    CCM->CCGR3 = 0XFFFFFFFF;
    CCM->CCGR4 = 0XFFFFFFFF;
    CCM->CCGR5 = 0XFFFFFFFF;
    CCM->CCGR6 = 0XFFFFFFFF;
}

void led_init(void)
{
    /* 1、初始化IO复用 */
    IOMUXC_SetPinMux(IOMUXC_GPIO1_IO03_GPIO1_IO03, 0); /* 复用为GPIO1_IO0 */

    /* 2、、配置GPIO1_IO03的IO属性	
     *bit 16:0 HYS关闭
     *bit [15:14]: 00 默认下拉
     *bit [13]: 0 kepper功能
     *bit [12]: 1 pull/keeper使能
     *bit [11]: 0 关闭开路输出
     *bit [7:6]: 10 速度100Mhz
     *bit [5:3]: 110 R0/6驱动能力
     *bit [0]: 0 低转换率
     */
    IOMUXC_SetPinConfig(IOMUXC_GPIO1_IO03_GPIO1_IO03, 0X10B0);

    /* 3、初始化GPIO,设置GPIO1_IO03设置为输出  */
    GPIO1->GDIR |= (1 << 3);

    /* 4、设置GPIO1_IO03输出低电平，打开LED0 */
    GPIO1->DR &= ~(1 << 3);
}

void led_on(void)
{
    /* 将GPIO1_DR的bit3清零         */
    GPIO1->DR &= ~(1 << 3);
}

void led_off(void)
{
    /* 将GPIO1_DR的bit3置1 */
    GPIO1->DR |= (1 << 3);
}

int main(int argc, char *argv[])
{
    clk_enable();
    led_init();
    rt_kprintf("hello tyustli\r\n");
    while(1)
    {
        led_on();
        rt_thread_mdelay(100);
        led_off();
        rt_thread_mdelay(100);
    }
    return 0;
}
