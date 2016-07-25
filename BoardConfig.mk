#
# Copyright (C) 2011-2016 The Android Open-Source Project
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

# Board device path
DEVICE_PATH := device/asus/tf300t

# Board device headers
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Board device elements
include $(DEVICE_PATH)/PlatformConfig.mk

# Bluetooth
BOARD_BLUEDROID_VENDOR_CONF := $(DEVICE_PATH)/bluetooth/vnd_tf300t.txt #TOCHECK do we really need this?
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Bootanimation
#TARGET_BOOTANIMATION_PRELOAD := true #TOCHECK can we use this
#TARGET_BOOTANIMATION_TEXTURE_CACHE := true #TOCHECK can we use this
#TARGET_BOOTANIMATION_USE_RGB565 := true #TOCHECK can we use this

# Camera
#TARGET_PROVIDES_CAMERA_HAL := true #TOCHECK can we use this
#USE_DEVICE_SPECIFIC_CAMERA := true #TOCHECK can we use this
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS #TOCHECK can we implement this hack in a better way?

# Healthd #TOCHECK can we use this
#BOARD_CHARGER_ENABLE_SUSPEND := true
#BOARD_CHARGER_DISABLE_INIT_BLANK := true
#BOARD_HAL_STATIC_LIBRARIES := libhealthd.msm
#BOARD_HEALTHD_CUSTOM_CHARGER_RES := $(DEVICE_PATH)/charger/images
#RED_LED_PATH := /sys/devices/i2c-10/10-0047/leds/LED1_R/brightness
#GREEN_LED_PATH := /sys/devices/i2c-10/10-0047/leds/LED1_G/brightness
#BLUE_LED_PATH := /sys/devices/i2c-10/10-0047/leds/LED1_B/brightness

# Clang build
#USE_CLANG_PLATFORM_BUILD := true #TOCHECK can we use this

# OTA assert #TOCHECK can we use this
#TARGET_OTA_ASSERT_DEVICE := C5302,C5303,C5306,huashan
#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/asus/tf300t/releasetools/tf300t_ota_from_target_files

# Partitions information
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_CACHEIMAGE_PARTITION_SIZE := 448790528
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 29850022707

# Partitions types
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true #TOCHECK can we use this

# Partitions blocks
BOARD_FLASH_BLOCK_SIZE := 4096

# Recovery
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.cardhu

# GPS #TOCHECK are there any GPS configurables?

# CM Hardware
BOARD_HARDWARE_CLASS := $(DEVICE_PATH)/cmhw

# Lights
# TARGET_PROVIDES_LIBLIGHT := true #TOCHECK do any of these have a notification led?

# Kernel information
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := #2048 #TOCHECK what is the pagesize?
BOARD_KERNEL_CMDLINE := # Ignored, see cmdline.txt
# BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 #TOCHECK can we use this

# Kernel properties
TARGET_KERNEL_SOURCE := kernel/asus/tf300t
TARGET_KERNEL_CONFIG := katkernel_defconfig
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-

# Custom boot #TOCHECK do we need this
#BOARD_CUSTOM_BOOTIMG := true
#BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/recovery/recovery.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := cardhu

# Vendor platform
BOARD_VENDOR := asus
BOARD_VENDOR_PLATFORM := tegra

# Dumpstate
BOARD_LIB_DUMPSTATE := libdumpstate.cardhu

# Images
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Audio configurations
# pre kitkat audio legacy policy fix for hotword (ok google) see http://review.cyanogenmod.org/#/c/126869/
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
#TOCHECK can we port to HAL3?

# Display
BOARD_HAVE_PIXEL_FORMAT_INFO := true
#TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
#BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true #TOCHECK if we still need the missing code

# WiFi
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/bcm/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/bcm/fw_bcmdhd_apsta.bin"
WPA_SUPPLICANT_VERSION           := VER_0_8_X

# Device sepolicies
BOARD_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy

# Sensors
SENSORS_NEED_SETRATE_ON_ENABLE := true

# build time performance flags
ARCH_ARM_HIGH_OPTIMIZATION := true
#DEBUG_NO_STDCXX11 := yes
TARGET_ENABLE_NON_PIE_SUPPORT := true
#TARGET_BOARD_CANT_REALLOCATE_OMX_BUFFERS := true
CLANG_O3 := true
STRICT_ALIASING := true
GRAPHITE_OPTS := true
ENABLE_GCCONLY := true
TARGET_GCC_VERSION_EXP := 5.x
#TARGET_GCC_VERSION_ARM := 5.x


# Board device vendor
-include vendor/asus/tf300t/BoardConfigVendor.mk
