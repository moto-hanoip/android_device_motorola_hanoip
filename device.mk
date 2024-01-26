# Copyright 2014 The Android Open Source Project
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

# Device path
DEVICE_PATH := device/motorola/hanoip/rootdir
LOCAL_PATH := device/motorola/hanoip

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=400

# AB Partitions
AB_OTA_PARTITIONS += \
    vendor_boot \
    system_ext

# Device characteristics
DEVICE_CHARACTERISTICS := hfr

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.idle_time=0

## Device Overlays
PRODUCT_PACKAGES += \
    hanoipCarrierConfig \
    NotchBarKiller

# Fingerprint
TARGET_USES_CHIPONE_FINGERPRINT := true
TARGET_USES_FPC_FINGERPRINT := true

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput_nav.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/uinput_nav.idc \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/uinput-fpc.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/uinput_nav.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/uinput_nav.kl \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/uinput-fpc.kl

# Model
PRODUCT_MODEL := moto g(60)

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=hanoip_retail \
    PRIVATE_BUILD_DESC="hanoip-user 12 S2RI32M.32-20-9-9-2 5bf47 release-keys"

BUILD_FINGERPRINT := motorola/hanoip_retail/hanoip:12/S2RI32M.32-20-9-9-2/5bf47:user/release-keys

# NFC
TARGET_USES_PN5XX_PN8X_NFC := true

# Inherit from those products. Most specific first.
$(call inherit-product, device/motorola/sm6150-common/platform.mk)

# include board vendor blobs
$(call inherit-product-if-exists, vendor/motorola/hanoip/hanoip-vendor.mk)
