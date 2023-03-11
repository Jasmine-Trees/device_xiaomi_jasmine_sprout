#
# Copyright (C) 2018-2021 The LineageOS Project
# Copyright (C) 2021 Pixel Experience
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common Pixel Experience stuff
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)
TARGET_INCLUDE_STOCK_ARCORE := false

# We are a phone
IS_PHONE := true

# Gapps Architecture
TARGET_GAPPS_ARCH := arm64

# Boot Aniamation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from jasmine_sprout device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi A2
PRODUCT_NAME := cherish_jasmine_sprout

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# CherishOS Stuff with GApps
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_BUILD_GRAPHENEOS_CAMERA := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_ENABLE_BLUR := true
WITH_GMS := true

# Maintainer Stuff
CHERISH_BUILD_TYPE := UNOFFICIAL
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=nhAsif