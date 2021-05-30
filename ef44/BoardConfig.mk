#inherit from the common blue definitions

#edit blue ef44 to pantech ef44
#include device/pantech/msm8960-common/BoardConfigCommon.mk

include device/pantech/msm8960-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH += device/pantech/ef44/include

TARGET_KERNEL_CONFIG := Lineage_ef44_defconfig
TARGET_PREBUILT_KERNEL := device/pantech/ef44/prebuilts/kernel

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 33

# numbers are from 985hPaKick's cm10 tree
BOARD_BOOTIMAGE_PARTITION_SIZE := 9437184
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 8589934592
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_OTA_ASSERT_DEVICE := ef44,a840,ef44s,a840s,vega

# inherit from the proprietary version
-include vendor/pantech/ef44/BoardConfigVendor.mk

# TWRP CONFIGS
#RECOVERY_VARIANT := twrp
#TW_THEME := portrait_hdpi

# TWRP configurations
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB := device/pantech/ef44/recovery.fstab
TW_BRIGHTNESS_PATH := /sys/devices/i2c-10/10-0040/leds/lcd-backlight_1/brightness
TW_SECONDARY_BRIGHTNESS_PATH := /sys/devices/i2c-10/10-0040/leds/lcd-backlight_2/brightness
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,barrier=1,noauto_da_alloc,discard"
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_KEY_LOC := "footer"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/msm_sdcc.1/by-name/Userdata"
TW_DEFAULT_BRIGHTNESS := 200
TW_EXCLUDE_SUPERSU := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_FLASH_FROM_STORAGE := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_JB_CRYPTO := false
TW_INCLUDE_L_CRYPTO := true
TW_INCLUDE_CRYPTO := true
TW_INPUT_BLACKLIST := "apds9702\nbma250\ncompass"
TW_HAS_NO_RECOVERY_PARTITION := true
TW_MAX_BRIGHTNESS := 255
TW_NO_SCREEN_BLANK := true
TW_THEME := portrait_hdpi

#BOARD_HAS_VIBRATOR_IMPLEMENTATION := device/pantech/ef44/vibrator/vibrator.c
LZMA_RAMDISK_TARGETS := recovery

