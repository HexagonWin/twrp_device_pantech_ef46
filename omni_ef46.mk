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


$(call inherit-product, device/pantech/ef46/ef46.mk)

# Build prop override from ICS. Update with JB information in the future.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SKY_IM-A830L BUILD_FINGERPRINT=SKY/SKY_IM-A830L/ef46l:4.0.3/IML74K/S1232135.EF46L_005:user/release-keys PRIVATE_BUILD_DESC="IML74K-user" BUILD_NUMBER=S1232135.EF46L_005

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit from ef46 device
$(call inherit-product, device/pantech/ef46/ef46.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := omni_ef46
PRODUCT_DEVICE := ef46
PRODUCT_BRAND := VEGA
PRODUCT_MANUFACTURER := Pantech
PRODUCT_MODEL := VEGA Racer2
