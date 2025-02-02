#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Bluetooth
PRODUCT_PACKAGES += \
    H96MaxX3BluetoothOverlay \
    libbt-vendor

## Bluetooth firmware
include kernel/amlogic/kernel-modules/dhd-driver/firmware/bluetooth/bluetooth.mk

## Factory
PRODUCT_HOST_PACKAGES += \
    aml_image_packer

## Init-Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc \
    $(LOCAL_PATH)/init-files/openvfd.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/openvfd.rc \
    $(LOCAL_PATH)/configs/keylayout/Vendor_0001_Product_0001.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Vendor_0001_Product_0001.kl

## TEE
TARGET_HAS_TEE := false

## Wi-Fi firmware
include kernel/amlogic/kernel-modules/dhd-driver/firmware/wifi/wifi.mk

## VFD
PRODUCT_PACKAGES += \
    OpenVFDService

## Inherit from the common tree product makefile
$(call inherit-product, device/amlogic/g12-common/g12.mk)

## Inherit from the proprietary files makefile
$(call inherit-product, vendor/amlogic/h96_max_x3/h96_max_x3-vendor.mk)
