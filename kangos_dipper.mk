#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/dipper/device.mk)
#firmware is inherited in device makefile

# Inherit some common stuff.
$(call inherit-product, vendor/kangos/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common KangOS stuff.

TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
USE_GAPPS := true

# OP Launcher
TARGET_OPLAUNCHER := true

# Kangos official
KANGOS_BUILDTYPE := OFFICIAL

# Kangos Maintainer
PRODUCT_PRODUCT_PROPERTIES += \
  ro.kangos.maintainer=Jullian_MS \
  ro.kangos.cpu=SDM845

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := kangos_dipper
PRODUCT_DEVICE := dipper
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/coral/coral:11/RP1A.201105.002/6869500:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dipper-user 8.1.0 OPM1.171019.011 V9.5.5.0.OEAMIFA release-keys" \
    PRODUCT_NAME="dipper"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
