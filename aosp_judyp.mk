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

# Inherit from judyp device
$(call inherit-product, device/lge/judyp/device.mk)

# Inherit some common DotOS stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device identifiers

PRODUCT_NAME := aosp_judyp
PRODUCT_DEVICE := judyp
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := G7 ThinQ
PRODUCT_MODEL := LM-G710

PRODUCT_GMS_CLIENTID_BASE := android-om-lg

TARGET_VENDOR_PRODUCT_NAME := judyp_lao_com
TARGET_VENDOR_DEVICE_NAME := judyp

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=judyp \
    PRODUCT_NAME=judyp_lao_com \

# DotOs
TARGET_BOOT_ANIMATION_RES := 1440

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true
