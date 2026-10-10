# Наследуем базовые параметры архитектуры Android
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# ИСПРАВЛЕНО: Вместо несуществующего minimal.mk наследуем официальный обёртку конфигурации TWRP
$(call inherit-product, vendor/twrp/config/common.mk)

# Спецификации устройства Realme C61
PRODUCT_DEVICE := RMX3930
PRODUCT_NAME := twrp_RMX3930
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme C61
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

# Наследуем внутренние конфигурации твоего дерева
$(call inherit-product, device/realme/RMX3930/device.mk)
