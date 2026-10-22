# ~/twrp_android/device/realme/RMX3930/BoardConfig.mk

DEVICE_PATH := device/realme/RMX3930

# Архитектура процессора
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Разрешаем сборку без исходников полной прошивки Android
ALLOW_MISSING_DEPENDENCIES := true

# Параметры ядра из unpack_bootimg вывода
TARGET_NO_KERNEL := true
BOARD_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS := --header_version 4
BOARD_PAGE_SIZE := 4096

# Точные смещения (offsets) из фабричного лога
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x05400000
BOARD_TAGS_OFFSET := 0x00000100
BOARD_DTB_OFFSET := 0x01f00000

# Командная строка и Bootconfig
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8 bootconfig bootconfig

# Флаги упаковки prebuilt DTB для Android 14/15
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt

# Настройки архитектуры разделов Android 14/15 (Сборка в vendor_boot)
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
TARGET_COPY_OUT_VENDOR := vendor

# Флаги интерфейса TWRP и шифрования данных
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_USE_TOOLBOX := true

