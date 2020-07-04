/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2020-07-02     tyustli   first version
 */

#include <rthw.h>
#include <rtthread.h>
#include "board.h"

#define LED0 0
#define ON 1
#define OFF 0

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

void led_switch(int led, int status)
{
    switch (led)
    {
    case LED0:
        if (status == ON)
            GPIO1->DR &= ~(1 << 3); /* 打开LED0 */
        else if (status == OFF)
            GPIO1->DR |= (1 << 3); /* 关闭LED0 */
        break;
    }
}

void epit1_irqhandler(void)
{
    static unsigned char state = 0;

    state = !state;
    if (EPIT1->SR & (1 << 0)) /* 判断比较事件发生 */
    {
        led_switch(LED0, state); /* 定时器周期到，反转LED */
    }

    EPIT1->SR |= 1 << 0; /* 清除中断标志位 */
}

void epit1_init(unsigned int frac, unsigned int value)
{
    if (frac > 0XFFF)
        frac = 0XFFF;

    EPIT1->CR = 0; /* 先清零CR寄存器 */

    /*
     * CR寄存器:
     * bit25:24 01 时钟源选择Peripheral clock=66MHz
     * bit15:4  frac 分频值
     * bit3:	1  当计数器到0的话从LR重新加载数值
     * bit2:	1  比较中断使能
     * bit1:    1  初始计数值来源于LR寄存器值
     * bit0:    0  先关闭EPIT1
     */
    EPIT1->CR = (1 << 24 | frac << 4 | 1 << 3 | 1 << 2 | 1 << 1);

    EPIT1->LR = value; /* 倒计数值 */
    EPIT1->CMPR = 0;   /* 比较寄存器，当计数器值和此寄存器值相等的话就会产生中断 */

    /* 使能GIC中对应的中断 */
    GIC_EnableIRQ(EPIT1_IRQn);

    /* 注册中断服务函数 */
    SystemInstallIrqHandler(EPIT1_IRQn, (system_irq_handler_t)epit1_irqhandler, NULL);

    EPIT1->CR |= 1 << 0; /* 使能EPIT1 */
}

void rt_hw_board_init(void)
{
    SystemInitIrqTable();
    clk_enable();
    led_init();
    epit1_init(0, 66000000 / 2);
}
