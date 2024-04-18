#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ruby device
$(call inherit-product, device/xiaomi/ruby/device.mk)

PRODUCT_DEVICE := ruby
PRODUCT_NAME := twrp_ruby
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := ruby
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_ruby-user 12 UP1A.230620.001 V816.0.3.0.UMOMIXM release-keys"

BUILD_FINGERPRINT := Redmi/ruby_global/ruby:14/UP1A.230620.001/V816.0.3.0.UMOMIXM:user/release-keys
