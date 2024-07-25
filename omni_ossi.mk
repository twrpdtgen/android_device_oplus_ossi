#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ossi device
$(call inherit-product, device/oplus/ossi/device.mk)

PRODUCT_DEVICE := ossi
PRODUCT_NAME := omni_ossi
PRODUCT_BRAND := oplus
PRODUCT_MODEL := ossi
PRODUCT_MANUFACTURER := oplus

PRODUCT_GMS_CLIENTID_BASE := android-oplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pineapple-user 14 UP1A.231005.007 1718977592624 release-keys"

BUILD_FINGERPRINT := oplus/ossi/ossi:14/UP1A.231005.007/1718977592624:user/release-keys
