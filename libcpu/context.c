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

void rt_hw_interrupt_enable(rt_base_t level)
{

}

rt_base_t rt_hw_interrupt_disable(void)
{

}

void rt_hw_context_switch(rt_ubase_t from, rt_ubase_t to)
{

}

void rt_hw_context_switch_to(rt_ubase_t to)
{

}
void rt_hw_context_switch_interrupt(rt_ubase_t from, rt_ubase_t to)
{

}

rt_uint8_t *rt_hw_stack_init(void *tentry, void *parameter,
                             rt_uint8_t *stack_addr, void *texit)
{
    return 0;
}
