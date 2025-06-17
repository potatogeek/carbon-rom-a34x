#
# Copyright (C) 2025 The carbonOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common carbon stuff.
$(call inherit-product, vendor/carbon/config/common.mk)

# Inherit from a34x device
$(call inherit-product, device/samsung/a34x/device.mk)

PRODUCT_DEVICE := a34x
PRODUCT_NAME := carbon_a34x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A346M
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a34xub-user 15 AP3A.240905.015.A2 A346MUBU9DYE7 release-keys"

BUILD_FINGERPRINT := samsung/a34xub/a34x:15/AP3A.240905.015.A2/A346MUBU9DYE7:user/release-keys
