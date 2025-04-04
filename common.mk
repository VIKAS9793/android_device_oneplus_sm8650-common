# Copyright (C) 2024 The LineageOS Project
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

# Inherit from the proprietary version
$(call inherit-product, vendor/oneplus/sm8650-common/sm8650-common-vendor.mk)

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor_boot \
    POSTINSTALL_REQUIRED_vendor_boot \
    POSTINSTALL_REQUIRED_vendor_boot_system \
    POSTINSTALL_REQUIRED_vendor_boot_system_ext \
    POSTINSTALL_REQUIRED_vendor_boot_vendor \
    POSTINSTALL_REQUIRED_vendor_boot_vendor_dlkm

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# Boot control
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl-qti \
    android.hardware.boot@1.2-impl-qti.recovery \
    android.hardware.boot@1.2-service \
    bootctrl.kalama \
    bootctrl.kalama.recovery

# Fastboot
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_PACKAGES += \
    CarrierConfigOverlayKalama \
    FrameworksResOverlayKalama \
    SettingsResOverlayKalama \
    SystemUIResOverlayKalama \
    TelephonyResOverlayKalama \
    WifiResOverlayKalama

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc \
    init.recovery.usb.rc \
    init.recovery.qcom.sh \
    init.recovery.qcom.early_boot.sh

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/qcom-caf/bootctrl \
    vendor/qcom/opensource/commonsys-intf/display

# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# Hardware Features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.any.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.any.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.software.vulkan.deqp.level.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vulkan.deqp.level.xml \
    frameworks/native/data/etc/android.software.opengles.deqp.level.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.opengles.deqp.level.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml \
    frameworks/native/data/etc/android.software.verified_boot_v2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot_v2.xml \
    frameworks/native/data/etc/android.software.verified_boot_v3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot_v3.xml \
    frameworks/native/data/etc/android.software.verified_boot_v4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot_v4.xml \
    frameworks/native/data/etc/android.software.verified_boot_v5.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot_v5.xml \
    frameworks/native/data/etc/android.software.verified_boot_v6.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot_v6.xml \
    frameworks/native/data/etc/android.software.verified_boot_v7.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot_v7.xml \
    frameworks/native/data/etc/android.software.verified_boot_v8.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot_v8.xml \
    frameworks/native/data/etc/android.software.verified_boot_v9.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot_v9.xml \
    frameworks/native/data/etc/android.software.verified_boot_v10.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot_v10.xml