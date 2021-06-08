$(call inherit-product, device/pantech/ef46/ef46.mk)

# Enhanced NFC
#$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit CM common Phone stuff.
#$(call inherit-product, vendor/omni/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SKY_IM-A830L BUILD_FINGERPRINT=SKY/SKY_IM-A830L/ef46l:4.0.3/IML74K/S1232135.EF46L_005:user/release-keys PRIVATE_BUILD_DESC="IML74K-user" BUILD_NUMBER=S1232135.EF46L_005

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=adb,mtp

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
 
# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ef46 device
$(call inherit-product, device/pantech/ef46/ef46.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := omni_ef46
PRODUCT_DEVICE := ef46
PRODUCT_BRAND := VEGA
PRODUCT_MANUFACTURER := Pantech
PRODUCT_MODEL := VEGA S5
