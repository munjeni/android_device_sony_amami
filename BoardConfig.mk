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

BOARD_VENDOR := sony

# Use Snapdragon LLVM Compiler if available
TARGET_USE_SDCLANG := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Kernel properties
ifeq (,$(filter $(TARGET_KERNEL_SOURCE),))
  TARGET_KERNEL_SOURCE := kernel/sony/msm8974
endif

# use CAF variants
BOARD_USES_QCOM_HARDWARE := true

# Platform
TARGET_BOOTLOADER_BOARD_NAME := MSM8974
TARGET_BOARD_PLATFORM := msm8974

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

# Audio
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_DISABLED_USBAUDIO := true
AUDIO_FEATURE_ENABLED_EXTN_POST_PROC := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Camera
TARGET_PROVIDES_CAMERA_HAL := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BACKLIGHT_PATH :=/sys/class/leds/lcd-backlight/brightness
RED_LED_PATH := /sys/class/leds/led:rgb_red/brightness
GREEN_LED_PATH := /sys/class/leds/led:rgb_green/brightness
BLUE_LED_PATH := /sys/class/leds/led:rgb_blue/brightness

# Font
EXTENDED_FONT_FOOTPRINT := true

TARGET_SPECIFIC_HEADER_PATH += \
    device/sony/amami/include

# Platform
BOARD_VENDOR_PLATFORM := rhine
PRODUCT_PLATFORM:= rhine

# Kernel information
BOARD_KERNEL_BASE     := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE  := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3b7 ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1 vmalloc=300M dwc3.maximum_speed=high dwc3_msm.prop_chg_detect=Y
BOARD_KERNEL_CMDLINE  += androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS  := --ramdisk_offset 0x02000000 --tags_offset 0x01E00000
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_IMAGE_NAME := zImage

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# FM Radio
AUDIO_FEATURE_ENABLED_FM := true
BOARD_HAVE_QCOM_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := false
TARGET_FM_LEGACY_PATCHLOADER := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_rhine

# SELinux
include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    device/sony/amami/sepolicy

# HIDL
DEVICE_MANIFEST_FILE := device/sony/amami/configs/manifest.xml

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"

# Filesystem
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
TARGET_RECOVERY_FSTAB := device/sony/amami/rootdir/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/sony/amami

# inherit from the proprietary version
#-include vendor/sony/amami/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := D5503,amami,z1c
TARGET_BOOTLOADER_BOARD_NAME := D5503
TARGET_SPECIFIC_HEADER_PATH += device/sony/amami/include
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/amami/bluetooth

# Kernel properties
TARGET_KERNEL_CONFIG := lineageos_rhine_amami_row_defconfig

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 26

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2436890624
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12891175936

# Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

# Audio
BOARD_USES_ALSA_AUDIO := true
USE_XML_AUDIO_POLICY_CONF := 1
USE_CUSTOM_AUDIO_POLICY := 1
AUDIO_FEATURE_DISABLED_USBAUDIO := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_EXTN_POST_PROC := true
AUDIO_FEATURE_ENABLED_LOW_LATENCY_CAPTURE := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true

# For android_filesystem_config.h
TARGET_ANDROID_FILESYSTEM_CONFIG_H := device/sony/amami/configs/android_filesystem_config.h

PRODUCT_PACKAGES += \
    fs_config_files

# GPS definitions for Qualcomm solution
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true
TARGET_NO_RPC := true

# Graphics
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000

# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := device/sony/amami/boot/custombootimg.mk

# Lights HAL
TARGET_PROVIDES_LIBLIGHT := true

# QCOM Power
TARGET_POWERHAL_VARIANT := qcom

# RIL
TARGET_RIL_VARIANT := caf
BOARD_PROVIDES_LIBRIL := false

# Time
BOARD_USES_QC_TIME_SERVICES := true

