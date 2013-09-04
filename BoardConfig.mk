# Copyright (C) 2012 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# Vendor stuff
-include vendor/iocean/V7/BoardConfigVendor.mk

# Custom kernel header
TARGET_SPECIFIC_HEADER_PATH := device/iocean/V7/include

# Platform
TARGET_BOOTLOADER_BOARD_NAME := V7
TARGET_BOARD_PLATFORM := MT6589T
TARGET_BOARD_PLATFORM_GPU := PowerVR SGX 544
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_INITLOGO := true


# Screens dimension
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Kernel stuff
BOARD_KERNEL_BASE := 0x00400000
BOARD_KERNEL_PAGESIZE := 4096
#TARGET_KERNEL_SOURCE := kernel/iocean/MT6589T/
#TARGET_KERNEL_CONFIG := shengx7_defconfig
TARGET_PREBUILT_KERNEL := device/iocean/V7/prebuilt/zImage

# EGL
BOARD_EGL_CFG := device/iocean/V7/config/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB := true
USE_OPENGL_RENDERER := true

# Display stuff
TARGET_NO_HW_VSYNC := false
TARGET_USES_C2D_COMPOSITION := true
TARGET_FORCE_CPU_UPLOAD := true
TARGET_PROVIDES_LIBLIGHT := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
TARGET_QCOM_DISPLAY_VARIANT := legacy

# Memory allocation
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_USES_ION := false

# Sensors
BOARD_USE_LEGACY_SENSORS_FUSION := false

# Power HAL
TARGET_PROVIDES_POWERHAL := true

# Camera stuff
COMMON_GLOBAL_CFLAGS += -Diocean_CAMERA_LEGACY
USE_CAMERA_STUB := true
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
BOARD_USES_LEGACY_OVERLAY := true
BOARD_CAMERA_USE_MM_HEAP := true
TARGET_DISABLE_ARM_PIE := true

# USB mass storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
# Enable below line if compiling for a recovery version before 6.0.1.2
#BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Target filesystem
TARGET_USERIMAGES_USE_EXT4 := true

# Vold stuff
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 28

# Recovery
# Custom recovery files
TARGET_RECOVERY_FSTAB := device/iocean/V7/recovery/recovery.fstab
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/iocean/V7/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS := ../../../device/iocean/V7/recovery/graphics.c

# Partition flags for CWM/TWRP
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_USES_MMCUTILS := true
SP1_NAME := "pds"
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
SP2_NAME := "osh"
SP2_DISPLAY_NAME := "Webtop"
SP2_BACKUP_METHOD := files
SP2_MOUNTABLE := 1
SP3_NAME := "preinstall"
SP3_BACKUP_METHOD := image
SP3_MOUNTABLE := 0
RECOVERY_SDCARD_ON_DATA := true
TW_NO_BATT_PERCENT := false

# TWRP mount points
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"

# Button configuration
BOARD_HAS_NO_SELECT_BUTTON := true
TW_CUSTOM_POWER_BUTTON := 107

# Screen configuration
DEVICE_RESOLUTION := 1080x1920
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# TWRP brightness settings
TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.196609/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255

# Misc TWRP flags
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
