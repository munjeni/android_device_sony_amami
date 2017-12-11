# Copyright (C) 2013 The CyanogenMod Project
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

COMMON_PATH := device/sony/amami

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/amami/overlay \
    device/sony/amami/overlay-radio

# Include system properties
-include $(LOCAL_PATH)/systemprop.mk

# Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml

# Bluetooth permissions
PRODUCT_COPY_FILES += \
     frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

# Bluetooth packages
PRODUCT_PACKAGES += \
    libbt-vendor

# Init
PRODUCT_COPY_FILES += \
    device/sony/amami/rootdir/fstab.qcom:root/fstab.qcom \
    device/sony/amami/rootdir/init.qcom.rc:root/init.qcom.rc \
    device/sony/amami/rootdir/init.sony.rc:root/init.sony.rc \
    device/sony/amami/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc \
    device/sony/amami/rootdir/init.qcom.power.rc:root/init.qcom.power.rc

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8974 \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.msm8974

PRODUCT_PACKAGES += \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessingdescriptors \
    libqcomvoiceprocessing \
    tinymix

PRODUCT_COPY_FILES += \
    device/sony/amami/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    device/sony/amami/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/sony/amami/audio/audio_policy_configuration.xml:system/vendor/etc/audio_policy_configuration.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:system/vendor/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/vendor/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/vendor/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:system/vendor/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/vendor/etc/usb_audio_policy_configuration.xml

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck

# FM Radio from Qcom
PRODUCT_PACKAGES += \
    qcom.fmradio \
    libqcomfm_jni \
    FM2 \
    FMRecord

PRODUCT_COPY_FILES += \
    device/sony/amami/rootdir/system/bin/fm_qsoc_patches:system/bin/fm_qsoc_patches \
    device/sony/amami/rootdir/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh

# FM Radio from AOSP
#PRODUCT_PACKAGES += \
#    libfmjni \
#    FMRadio

# BoringSSL hacks
PRODUCT_PACKAGES += \
    libboringssl-compat

# Connectivity
PRODUCT_PACKAGES += \
    libcnefeatureconfig

# IPC Security Config
PRODUCT_COPY_FILES += \
    device/sony/amami/rootdir/system/etc/sec_config:system/etc/sec_config

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8974

# Keylayout
PRODUCT_COPY_FILES += \
    device/sony/amami/rootdir/system/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/sony/amami/rootdir/system/usr/keylayout/mhl-rcp.kl:system/usr/keylayout/mhl-rcp.kl \
    device/sony/amami/rootdir/system/usr/keylayout/msm8974-taiko-mtp-snd-card_Button_Jack.kl:system/usr/keylayout/msm8974-taiko-mtp-snd-card_Button_Jack.kl

# MAC address - BT and Wi-Fi
PRODUCT_PACKAGES += \
    macaddrsetup

# NFC
PRODUCT_PACKAGES += \
    nfc.qcom \
    libnfc \
    libnfc_ndef \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.google.android.nfc_extras.xml \

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/sony/amami/rootdir/system/etc/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/sony/amami/rootdir/system/etc/nfcee_access_debug.xml
endif

PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

# Off mode charger
PRODUCT_PACKAGES += \
    charger_res_images

# WiFi
PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg \
    libqsap_sdk \
    wcnss_service

PRODUCT_COPY_FILES += \
    device/sony/amami/rootdir/system/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/sony/amami/rootdir/system/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    device/sony/amami/rootdir/system/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/sony/amami/rootdir/system/etc/firmware/wlan/prima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/sony/amami/rootdir/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    device/sony/amami/rootdir/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    device/sony/amami/rootdir/system/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf

# Media profile
PRODUCT_COPY_FILES += \
    device/sony/amami/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/sony/amami/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/sony/amami/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# HWUI memory limits
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Include non-opensource parts
$(call inherit-product, vendor/sony/rhine-common/rhine-common-vendor.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Device specific init
PRODUCT_COPY_FILES += \
    device/sony/amami/rootdir/init.device.rc:root/init.device.rc

# Sensors
PRODUCT_COPY_FILES += \
    device/sony/amami/configs/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf

# Thermal manager
PRODUCT_COPY_FILES += \
    device/sony/amami/configs/thermanager.xml:system/etc/thermanager.xml

# Init
PRODUCT_COPY_FILES += \
    device/sony/amami/rootdir/init.msm8974-common.rc:root/init.msm8974-common.rc \
    device/sony/amami/rootdir/init.sony.usb.rc:root/init.sony.usb.rc \
    device/sony/amami/rootdir/init.recovery.qcom.rc:root/init.recovery.qcom.rc


PRODUCT_COPY_FILES += \
    device/sony/amami/rootdir/system/bin/credmgrfirstboot.sh:system/bin/credmgrfirstboot.sh

# Camera
PRODUCT_PACKAGES += \
    tad_static \
    wait4tad_static \
    libshims_wvm \
    libsony_signal \
    libshims_idd \
    libsony_camera \
    libshim_cald \
    libsony_graphicbuffer \
    libstlport

# gps permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# GPS
PRODUCT_PACKAGES += \
    gps.msm8974 \
    libloc_core \
    libloc_eng \
    libgps.utils \
    libloc_ds_api \
    libloc_api_v02

PRODUCT_COPY_FILES += \
    device/sony/amami/gps/etc/gps.conf:system/etc/gps.conf

# Setup custom emergency number list based on the MCC. This is needed by RIL
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.custom_ecc=1 \
    DEVICE_PROVISIONED=1

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Seccomp policy
PRODUCT_COPY_FILES += \
    device/sony/amami/seccomp_policy/mediacodec.policy:system/etc/seccomp_policy/mediacodec.policy

# Music packages
PRODUCT_PACKAGES += \
    Eleven

# Specific apps
PRODUCT_PACKAGES += \
    Camera2 \
    libshim_atomic \
    Jelly

# Display
PRODUCT_PACKAGES += \
    hwcomposer.msm8974 \
    gralloc.msm8974 \
    copybit.msm8974 \
    memtrack.msm8974 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer \
    libI420colorconvert

# Ion
PRODUCT_PACKAGES += \
    libion

# Lights
PRODUCT_PACKAGES += \
    lights.msm8974

# Omx
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libOmxVdecHevc \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    power.msm8974

# Recovery
PRODUCT_PACKAGES += \
    keycheck

PRODUCT_PACKAGES += \
    librmnetctl \
    libxml2

# Thermal management
PRODUCT_PACKAGES += \
    thermanager

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf

TARGET_SYSTEM_PROP += \
    device/sony/amami/system.prop

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Include non-opensource parts
$(call inherit-product, vendor/sony/amami/amami-vendor.mk)

# Include HIDL Interfaces
$(call inherit-product, device/sony/amami/HIDL.mk)


