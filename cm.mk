## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := mystul

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/mystul/device_mystul.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mystul
PRODUCT_NAME := cm_mystul
PRODUCT_BRAND := htc
PRODUCT_MODEL := mystul
PRODUCT_MANUFACTURER := htc
