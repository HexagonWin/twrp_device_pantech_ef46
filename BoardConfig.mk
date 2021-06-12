###################################################################################
#                                                                                 #
#,--.   ,--.,---.  ,-----.       ,--.   ,--.                                      #
# \  `.'  /'   .-' |  .--',-----.|  |   `--',--,--,  ,---.  ,--,--. ,---.  ,---.  #
#  \     / `.  `-. '--. `\'-----'|  |   ,--.|      \| .-. :' ,-.  || .-. || .-. : #
#   \   /  .-'    |.--'  /       |  '--.|  ||  ||  |\   --.\ '-'  |' '-' '\   --. #
#    `-'   `-----' `----'        `-----'`--'`--''--' `----' `--`--'.`-  /  `----' #
#                                                                  `---'          #
#              Copyright (c) 2021 HexagonWin, VS5-Lineage Project                 #
#            Please check the README for credits and more information.            #
#                      Licensed under the Apache License 2.0.                     #
###################################################################################

#
# Copyright (C) 2013-2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_SPECIFIC_HEADER_PATH += device/pantech/ef44/include

# Kernel related things.
TARGET_KERNEL_CONFIG := Lineage_ef44_defconfig
TARGET_PREBUILT_KERNEL := device/pantech/ef44/prebuilts/kernel

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom androidboot.carrier=SKT-KOR user_debug=31 msm_rtb.filter=0x3F kgsl.mmutype=gpummu androidboot.emmc=true
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FORCE_RAMDISK_ADDRESS := 0x81600000

# Board, AP etc things.
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_KERNEL_SOURCE := kernel/pantech/ef44

TARGET_BOOTLOADER_BOARD_NAME := MSM8960
TARGET_BOARD_PLATFORM := msm8960

TARGET_NO_BOOTLOADER := true

# Partition and nand informations.
# ICS sizes. In the future, please check the sizes in JB again as it may have changed.
BOARD_VOLD_MAX_PARTITIONS := 33

BOARD_BOOTIMAGE_PARTITION_SIZE := 9437184
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 8589934592
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true

# TWRP configurations
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB := device/pantech/ef44/recovery.fstab
TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.524801/leds/lcd-backlight/brightness
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,barrier=1,noauto_da_alloc,discard"
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_KEY_LOC := "footer"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/msm_sdcc.1/by-name/userdata"
TW_DEFAULT_BRIGHTNESS := 200
TW_EXCLUDE_SUPERSU := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_FLASH_FROM_STORAGE := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_JB_CRYPTO := false
TW_INCLUDE_L_CRYPTO := true
TW_INCLUDE_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_NO_SCREEN_BLANK := true
TW_THEME := portrait_hdpi

LZMA_RAMDISK_TARGETS := recovery

# Boot image related things.
BOARD_CUSTOM_BOOTIMG_MK := device/pantech/ef44/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x2000000
