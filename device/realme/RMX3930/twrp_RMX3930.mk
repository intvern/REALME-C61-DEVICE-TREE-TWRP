# ~/twrp_android/device/realme/RMX3930/twrp_RMX3930.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Наследуем базовые настройки компилятора TWRP
$(call inherit-product, vendor/twrp/config/common.mk)

# Идентификаторы устройства
PRODUCT_DEVICE := RMX3930
PRODUCT_NAME := twrp_RMX3930
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme C61
PRODUCT_MANUFACTURER := realme

PRODUCT_RELEASE_NAME := Realme C61

