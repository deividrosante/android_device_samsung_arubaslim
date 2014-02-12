## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/arubaslim/device_arubaslim.mk)

# Inherit some common CM stuff.
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
$(call inherit-product, vendor/cm/config/mini.mk)

# Overrides
PRODUCT_NAME := cm_arubaslim
PRODUCT_DEVICE := arubaslim
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I8262
PRODUCT_MANUFACTURER := Samsung
PRODUCT_CHARACTERISTICS := phone
PRODUCT_RELEASE_NAME := GalaxyCore
PRODUCT_VERSION_DEVICE_SPECIFIC := -GT-I8262
