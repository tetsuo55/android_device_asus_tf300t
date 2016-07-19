#
# Copyright (C) 2011-2016 The Android Open Source Project
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

# Screen density
# Physical size	of display
PRODUCT_AAPT_CONFIG := xlarge		
# Dpi to select for source builds		
PRODUCT_AAPT_PREF_CONFIG := mdpi		
# A list of dpis to select prebuilt apk, in precedence order.			
PRODUCT_AAPT_PREBUILT_DPI := mdpi hdpi xhdpi tvdpi ldpi

# Device specific overlays
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Product common configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Dalvik heap configurations
$(call inherit-product-if-exists, frameworks/native/build/tablet-dalvik-heap.mk)

# Device product elements
# Audio configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \

# Camera packages
PRODUCT_PACKAGES += \
#    camera.qcom \
    libstlport #\
#    Snap

# Healthd packages
#PRODUCT_PACKAGES += \
#    charger_res_images

# Display properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160
    debug.hwui.render_dirty_regions=false

# GPS configurations
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
   $(LOCAL_PATH)/gps/gpsconfig.xml:system/etc/gps/gpsconfig.xml

# SEC configurations
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \

# Lights package
#PRODUCT_PACKAGES += \
#    lights.msm8960

# Init packages
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.cardhu.rc:root/init.cardhu.rc \
    $(LOCAL_PATH)/rootdir/init.tf.rc:root/init.tf.rc \
    $(LOCAL_PATH)/rootdir/ueventd.cardhu.rc:root/ueventd.cardhu.rc \
    $(LOCAL_PATH)/rootdir/init.cardhu.usb.rc:root/init.cardhu.usb.rc \
    $(LOCAL_PATH)/rootdir/init.cardhu.cpu.rc:root/init.cardhu.cpu.rc \
    $(LOCAL_PATH)/rootdir/fstab.cardhu:root/fstab.cardhu

# Keys layouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/asusec.kl:system/usr/keylayout/asusec.kl \
    $(LOCAL_PATH)/configs/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Keys chars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/asusec.kcm:system/usr/keychars/Generic.kcm

# Touchscreen configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/atmel-maxtouch.idc:system/usr/idc/atmel-maxtouch.idc \
    $(LOCAL_PATH)/configs/elan-touchscreen.idc:system/usr/idc/elan-touchscreen.idc \
    $(LOCAL_PATH)/configs/elantech_touchscreen.idc:system/usr/idc/elantech_touchscreen.idc \
    $(LOCAL_PATH)/configs/raydium_ts.idc:system/usr/idc/raydium_ts.idc \
    $(LOCAL_PATH)/configs/panjit_touch.idc:system/usr/idc/panjit_touch.idc

# Media configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Ramdisk packages
PRODUCT_PACKAGES += \
    blobpack_tfp

# Wifimacwriter package
PRODUCT_PACKAGES += \
    wifimacwriter

# ART properties
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-flags=--no-watch-dog \
    dalvik.vm.dex2oat-swap=false

# Audio permissions
#PRODUCT_COPY_FILES += \
#    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml

# Audio packages
PRODUCT_PACKAGES += \
    audio.a2dp.default \
#    audio.primary.msm8960 \
    audio.r_submix.default \
    libaudioutils \
#    audio.usb.default \
#    libaudio-resampler

# Audio tools
PRODUCT_PACKAGES += \
    tinymix

# Bluetooth permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \

# Camera permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml


# OpenGL properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# GPS permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# Touchscreen permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Media codecs
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# DRM properties
#PRODUCT_PROPERTY_OVERRIDES += \
#    drm.service.enabled=true

# Sensors permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \

# USB permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# WiFi permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml #\
#    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

# WiFi packages
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

# Sensors configurations

# USB properties
#PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
#    ro.usb.pid_suffix=195

# WPA supplicant configurations
PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
     $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Hostapd configurations
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/wifi/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf

# WiFi properties
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

#TODO Clean this up:
#things that are copied
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf \
    $(LOCAL_PATH)/prebuilt/xbin/rsync:system/xbin/rsync

#Build settings
PRODUCT_CHARACTERISTICS := tablet
EXTENDED_FONT_FOOTPRINT := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOOTANIMATION_RESOLUTION := KatKiss

# Cardhu HAL libraries
BOARD_HAL_STATIC_LIBRARIES := \
    libhealthd.cardhu

# Extra packages to build for this device
PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory \
    make_ext4fs \
    setup_fs \
    e2fsck \
    mkfs.f2fs \
    libstlport \
    libnetcmdiface

# Propertys spacific for this device
PRODUCT_PROPERTY_OVERRIDES := \
    tf.enable=y \
    persist.sys.usb.config=mtp,adb \
    persist.tegra.nvmmlite=1 \
    persist.external_drive_world_rw=1 \
    display.smart_dimmer=1 \
    ro.epad.model=TF300T \
    ro.product.model=TF300T \
    ro.carrier=wifi-only \
    ro.ethernet.interface=eth0 \
    ro.ethernet.autoEnable=yes \
    sensor.loop.minms=0 \
    orientation.magnitude.threshold=50 \
    ro.sys.fw.bg_apps_limit = 15 \
    ro.sys.fw.use_trim_settings=true \
    ro.sys.fw.trim_empty_percent=80 \
    ro.sys.fw.trim_cache_percent=80 \
    ro.sys.fw.bservice_enable=true \
    # don't preload OpenGL in Zygote, the Tegra drivers do not like it
    ro.zygote.disable_gl_preload=true

# Vendor product configurations
$(call inherit-product, vendor/asus/tf300t/tf300t-vendor.mk)
