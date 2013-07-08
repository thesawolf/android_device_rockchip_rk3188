## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := rk3188

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/rockchip/rk3188/device_rk3188.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rk3188
PRODUCT_NAME := cm_rk3188
PRODUCT_BRAND := rockchip
PRODUCT_MODEL := rk3188
PRODUCT_MANUFACTURER := rockchip
