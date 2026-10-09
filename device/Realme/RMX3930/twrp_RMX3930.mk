$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/minimal.mk)

PRODUCT_DEVICE := RMX3930
PRODUCT_NAME := twrp_RMX3930
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme C61
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

$(call inherit-product, device/realme/RMX3930/device.mk)
