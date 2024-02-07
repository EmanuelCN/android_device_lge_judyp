#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from judyp device
$(call inherit-product, device/lge/judyp/device.mk)

# Inherit some common ROM stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device identifiers

PRODUCT_NAME := aosp_judyp
PRODUCT_DEVICE := judyp
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := V35 ThinQ
PRODUCT_MODEL := LM-V350

PRODUCT_GMS_CLIENTID_BASE := android-om-lg

TARGET_VENDOR_PRODUCT_NAME := judyp_lao_com
TARGET_VENDOR_DEVICE_NAME := judyp

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=judyp \
    PRODUCT_NAME=judyp_lao_com \
    PRIVATE_BUILD_DESC="judyp_lao_com-user 10 QKQ1.191222.002 2127217366356 release-keys"

BUILD_FINGERPRINT := "lge/judyp_lao_com/judyp:10/QKQ1.191222.002/2127217366356:user/release-keys"

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1440

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true
