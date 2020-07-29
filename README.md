# imx6ull bsp

## 使用方法

打开 `Env` 工具，使用 `scons` 命令生成 `rtthread.bin` 文件

## 程序烧写

- chmod 777 imxdownloadscon /* 给 `imxdownload` 文件执行权限，只需执行一次即可 */
- ./imxdownload rtthread.bin /dev/sdb /* 下载 bin 文件到 SD 卡 */

## 实验现象

将开发板设置为 SD 卡启动，并将烧写好程序的 SD 卡插入开发板，实验现象如下所示

```c
 \ | /
- RT -     Thread Operating System
 / | \     4.0.3 build Jul  7 2020
 2006 - 2020 Copyright by rt-thread team
msh >
msh >ps
thread   pri  status      sp     stack size max used left tick  error
-------- ---  ------- ---------- ----------  ------  ---------- ---
tshell    20  running 0x00000060 0x00001000    12%   0x00000005 000
tidle0    31  ready   0x00000040 0x00000400    06%   0x00000020 000
main      10  suspend 0x00000080 0x00000800    08%   0x00000012 000
msh >
```

## 驱动支持


| **外设** | **支持情况** | **备注** |
|:-------------|:------------:|:--------:|
| UART         |     支持     |    UART1     |

## 联系人信息

维护人:

- [tyustli](https://gitee.com/tyustli) 
- 邮箱：tyustli@163.com