# Copyright (C) 2007 The Android Open Source Project
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

# BoardConfig.mk

## Kernel, bootloader
TARGET_BOOTLOADER_BOARD_NAME := arubaslim
TARGET_KERNEL_CONFIG := cyanogenmod_arubaslim_defconfig
TARGET_OTA_ASSERT_DEVICE := GalaxyCore,GT-I8262
BOARD_KERNEL_BASE := 0x03200000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_SOURCE := kernel/samsung/arubaslim
#BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null

## Recovery cmd line
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom loglevel=1 vmalloc=200M

TARGET_PROVIDES_INIT_TARGET_RC := true

## Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8909824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1004535296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1291845120
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/arubaslim/recovery/recovery_keys.c
TARGET_RECOVERY_FSTAB := device/samsung/arubaslim/recovery/fstab.arubaslim
TARGET_RECOVERY_INITRC := device/samsung/arubaslim/recovery/recovery.rc
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
TARGET_RECOVERY_SWIPE := true

## Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27
TARGET_SPECIFIC_HEADER_PATH := device/samsung/arubaslim/include
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a9
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Javascript, Browser and Webkit
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome
TARGET_FORCE_CPU_UPLOAD := true

## Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/arubaslim/bluetooth/vnd_samsung.txt
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/arubaslim/bluetooth

## Camera
TARGET_PREBUILT_LIBCAMERA := false
TARGET_CAMERA_SENSOR_MP_SIZE := 5
USE_CAMERA_STUB := false
BOARD_CAMERA_NO_UNWANTED_MSG := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_LEGACY

## Qualcomm, display
TARGET_GLOBAL_CFLAGS   += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS   += -DQCOM_NO_SECURE_PLAYBACK -DBINDER_COMPAT
COMMON_GLOBAL_CFLAGS   += -DQCOM_HARDWARE -DNO_UPDATE_PREVIEW

## Legacy touchscreen support
BOARD_USE_LEGACY_TOUCHSCREEN := true

## Device specific libs
TARGET_PROVIDES_LIBAUDIO := true
TARGET_PROVIDES_LIBLIGHT := true

## Audio: combo device supported
BOARD_COMBO_DEVICE_SUPPORTED := true

## Audio: extamp support
BOARD_EXTAMP_AUDIO_FEATURE := true

## Samsung has weird framebuffer
TARGET_NO_INITLOGO := true

## Fix colors in panorama mode
BOARD_CPU_COLOR_CONVERT := true

## SELinux: kernel 2.6 only has support for policy ver <=24
POLICYVERS := 24

## Bootanimation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

## OTA script extras file (build/tools/releasetools)
TARGET_OTA_EXTRAS_FILE := device/samsung/arubaslim/releasetools-extras-tiny.txt
