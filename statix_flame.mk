#
# Copyright (C) 2022 The Crooked Android Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff.
$(call inherit-product, vendor/statix/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_flame.mk)

include device/google/coral/flame/device-statix.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4
PRODUCT_NAME := statix_flame

# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=flame \
    PRIVATE_BUILD_DESC="flame-user 12 SP2A.220405.003 8210211 release-keys"

BUILD_FINGERPRINT := google/flame/flame:12/SP2A.220405.003/8210211:user/release-keys

$(call inherit-product, vendor/google/flame/flame-vendor.mk)
