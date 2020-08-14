# imx6ull bsp

## 使用方法

打开 `Env` 工具，使用 `scons` 命令生成 `rtthread.bin` 文件

## 程序烧写

- chmod 777 imxdownload /* 给 `imxdownload` 文件执行权限，只需执行一次即可 */
- ./imxdownload rtthread.bin /dev/sdb /* 下载 bin 文件到 SD 卡 */

## 实验现象

将开发板设置为 SD 卡启动，并将烧写好程序的 SD 卡插入开发板，实验现象如下所示

```c
 \ | /
- RT -     Thread Operating System
 / | \     4.0.3 build Jul  7 2020
 2006 - 2020 Copyright by rt-thread team
msh >
```

## 驱动支持


| **外设** | **支持情况** |        **备注**         |
|:---------|:------------:|:-----------------------:|
| UART     |     支持     | UART1(DMA 模式暂未支持) |
| GPIO     |     支持     |    中断模式暂未支持     |

## 联系人信息

维护人:

- [tyustli](https://gitee.com/tyustli) 
- 邮箱：tyustli@163.com