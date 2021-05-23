$(call inherit-product, device/pantech/ef44/ef44.mk)

# Enhanced NFC
#$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit CM common Phone stuff.
#$(call inherit-product, vendor/omni/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SKY_IM-A840S BUILD_FINGERPRINT=SKY/SKY_IM-A840S/IM-A840S:4.0.4/IMM76I/IM-A840S.003:user/release-keys PRIVATE_BUILD_DESC="msm8960-user 4.0.4 IMM76I IM-A840S.003 release-keys" BUILD_NUMBER=IM-A840S.003

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
 
# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ef44 device
$(call inherit-product, device/pantech/ef44/ef44.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := omni_ef44
PRODUCT_DEVICE := ef44
PRODUCT_BRAND := VEGA
PRODUCT_MANUFACTURER := Pantech
PRODUCT_MODEL := VEGA S5
