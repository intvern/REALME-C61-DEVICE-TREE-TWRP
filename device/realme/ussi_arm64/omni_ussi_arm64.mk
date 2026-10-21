#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ussi_arm64 device
$(call inherit-product, device/realme/ussi_arm64/device.mk)

PRODUCT_DEVICE := ussi_arm64
PRODUCT_NAME := omni_ussi_arm64
PRODUCT_BRAND := realme
PRODUCT_MODEL := ussi_arm64_full
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ussi_arm64_full-user 15 AP3A.240905.015.A2 2753 release-keys"

BUILD_FINGERPRINT := realme/RMX3930/RE6054:15/AP3A.240905.015.A2/U.R4T2.1768557216:user/release-keys

#TWRP Flags
# Архитектура
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi

# Ядро (Kernel)
# ВНИМАНИЕ: Обязательно вставьте реальные параметры CMDLINE и параметры из стокового boot.img!
BOARD_KERNEL_CMDLINE := bootconfig loop.max_part=16
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864 # Замените на точный размер вашего boot.img в байтах

# Структура разделов и виртуальный A/B
AB_OTA_UPDATER := true
TW_HAS_NO_RECOVERY_PARTITION := true
BOARD_USES_METADATA_PARTITION := true

# Динамические разделы (Super Partition)
# На Realme C61 используется схема QTI/Unisoc динамических разделов. 
# Их размеры нужно обязательно указать, иначе TWRP не скомпилируется для A/B устройства.
BOARD_SUPER_PARTITION_GROUPS := realme_dynamic_partitions
BOARD_SUPER_PARTITION_SIZE := 9126805504 # Замените на точный размер super из стока
BOARD_REALME_DYNAMIC_PARTITIONS_SIZE := 9122611200 # (BOARD_SUPER_PARTITION_SIZE - 4MB на метаданные)
BOARD_REALME_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product vendor odm

# Файловые системы
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_EROFS_COMPRESSOR := lz4

# Шифрование (Дешифровка /data)
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_USE_FSCRYPT_POLICY := 2
TW_INCLUDE_FBE_METADATA_DECRYPT := true

# Интерфейс и Графика
DEVICE_RESOLUTION := 720x1600
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 150

# Дополнительные инструменты и отладка
TW_INCLUDE_RESETPROP := true
TWRP_INCLUDE_LOGCAT := true
TWRP_EVENT_LOGGING := true
TW_USE_TOOLBOX := true
TW_INCLUDE_NTFS_3G := true

