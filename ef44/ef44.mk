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

DEVICE_PACKAGE_OVERLAYS += device/pantech/ef44/overlay

# These are the hardware-specific features
#PRODUCT_COPY_FILES += \
#    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += en_US

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/pantech/ef44/ramdisk/init.rc:root/init.rc \
    device/pantech/ef44/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/pantech/ef44/ramdisk/init.target.rc:root/init.target.rc \
    device/pantech/ef44/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/pantech/ef44/ramdisk/init.pantech.usb.rc:root/init.pantech.usb.rc \
    device/pantech/ef44/ramdisk/init.pantech.usb.sh:root/init.pantech.usb.sh \
    device/pantech/ef44/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    device/pantech/ef44/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    device/pantech/ef44/ramdisk/ueventd.rc:root/ueventd.rc \
    device/pantech/ef44/ramdisk/initlogo.rle:root/initlogo.rle

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb

# USB OTG support
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=true

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
