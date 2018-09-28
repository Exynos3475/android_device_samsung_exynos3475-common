#
# Copyright (C) 2017-2018 The LineageOS Project
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

LOCAL_PATH := device/samsung/exynos3475-common

# Boot animation
TARGET_BOOTANIMATION_HALF_RES := true

# Flat device tree for boot image
PRODUCT_PACKAGES += \
    dtbhtoolExynos

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

# Audio
PRODUCT_PACKAGES += \
    audio.primary.universal3475 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libtinycompress

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# call Samsung LSI board support package
$(call inherit-product, hardware/samsung_slsi-cm/exynos3475/exynos3475.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/o5prolte/o5prolte-vendor.mk)