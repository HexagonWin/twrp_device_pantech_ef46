Copyright 2021 - HexagonWin

Pantech SKY VEGA S5
=============

The stock kernel is over 6mb, so this can't be used with TWRP.
Instead, we will use a custom kernel and a XZ compression.
Please use the kernel in [mifl/android_kernel_pantech_ef44s](https://github.com/mifl/android_kernel_pantech_ef44s)
(Commit 11ea9566455a7dc6fa667b54bc92792b83b26f59)
And, use the defconfig provided in this folder, cm_ef44_defconfig.
Your kernel will build successfully, then copy the zImage and use it.
You need to use arm-eabi-4.6 by Google.

In the future, there will be more modifications such as removing the drivers for cameras, wlan, bt. However, this isn't done for now.
