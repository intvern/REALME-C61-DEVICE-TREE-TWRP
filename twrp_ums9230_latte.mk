#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

$(call inherit-product, device/Realme/ums9230_latte/device.mk)

PRODUCT_DEVICE := ums9230_latte
PRODUCT_NAME := twrp_ums9230_latte
PRODUCT_BRAND := realme
PRODUCT_MODEL := ussi_arm64_full
PRODUCT_MANUFACTURER := Realme
PRODUCT_RELEASE_NAME := ums9230_latte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ussi_arm64_full-user 15 AP3A.240905.015.A2 462 release-keys"
BUILD_FINGERPRINT := realme/RMX3930/RE6054:15/AP3A.240905.015.A2/U.R4T2.1763368992:user/release-keys
