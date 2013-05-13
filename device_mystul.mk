#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8960 configs
$(call inherit-product, device/htc/msm8960-common/msm8960.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/mystul/mystul-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/mystul/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    $(LOCAL_PATH)/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    $(LOCAL_PATH)/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    $(LOCAL_PATH)/recovery/sbin/power_test:recovery/root/sbin/power_test


$(call inherit-product, build/target/product/full.mk)

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/htc/mystul/ramdisk/fstab.operaul:root/fstab.operaul \
    device/htc/mystul/ramdisk/init.target.rc:root/init.target.rc \
    device/htc/mystul/ramdisk/init.usb.rc:root/init.usb.rc \
    device/htc/mystul/ramdisk/ueventd.target.rc:root/ueventd.target.rc

# recovery and custom charging
PRODUCT_COPY_FILES += \
    device/htc/mystul/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/mystul/recovery/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/mystul/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/mystul/recovery/sbin/detect_key:recovery/root/sbin/detect_key

# HTC BT audio config
PRODUCT_COPY_FILES += device/htc/mystul/configs/AudioBTID.csv:system/etc/AudioBTID.csv

# QC thermald config
PRODUCT_COPY_FILES += device/htc/msm8960-common/configs/thermald.conf:system/etc/thermald.conf

# vold config
PRODUCT_COPY_FILES += \
    device/htc/mystul/configs/vold.fstab:system/etc/vold.fstab

# wifi config
PRODUCT_COPY_FILES += \
    device/htc/mystul/configs/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \
    device/htc/mystul/firmware/fw_bcm4334.bin:/system/etc/firmware/fw_bcm4334.bin \
    device/htc/mystul/firmware/fw_bcm4334_apsta.bin:/system/etc/firmware/fw_bcm4334_apsta.bin \
    device/htc/mystul/firmware/fw_bcm4334_p2p.bin:/system/etc/firmware/fw_bcm4334_p2p.bin \
    device/htc/mystul/firmware/BCM4334B0_002.001.013.0488.0604.hcd:/system/etc/firmware/BCM4334B0_002.001.013.0488.0604.hcd

# Sound configs
PRODUCT_COPY_FILES += \
    device/htc/mystul/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/mystul/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/mystul/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/mystul/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/mystul/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/mystul/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/mystul/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg

PRODUCT_COPY_FILES += \
    device/htc/mystul/dsp/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/htc/mystul/dsp/snd_soc_msm/snd_soc_msm_Sitar:/system/etc/snd_soc_msm/snd_soc_msm_Sitar

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/mystul/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/mystul/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/mystul/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/htc/mystul/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/htc/mystul/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/mystul/idc/projector_input.idc:system/usr/idc/projector_input.idc

# MSM8930 firmware
PRODUCT_COPY_FILES += \
    device/htc/mystul/firmware/a300_pm4.fw:/system/etc/firmware/a300_pm4.fw \
    device/htc/mystul/firmware/a300_pfp.fw:/system/etc/firmware/a300_pfp.fw \
    device/htc/mystul/firmware/modem_fw.b00:/system/etc/firmware/modem_fw.b00 \
    device/htc/mystul/firmware/modem_fw.b01:/system/etc/firmware/modem_fw.b01 \
    device/htc/mystul/firmware/modem_fw.b02:/system/etc/firmware/modem_fw.b02 \
    device/htc/mystul/firmware/modem_fw.b03:/system/etc/firmware/modem_fw.b03 \
    device/htc/mystul/firmware/modem_fw.b04:/system/etc/firmware/modem_fw.b04 \
    device/htc/mystul/firmware/modem_fw.b05:/system/etc/firmware/modem_fw.b05 \
    device/htc/mystul/firmware/modem_fw.b06:/system/etc/firmware/modem_fw.b06 \
    device/htc/mystul/firmware/modem_fw.b07:/system/etc/firmware/modem_fw.b07 \
    device/htc/mystul/firmware/modem_fw.b08:/system/etc/firmware/modem_fw.b08 \
    device/htc/mystul/firmware/modem_fw.b09:/system/etc/firmware/modem_fw.b09 \
    device/htc/mystul/firmware/modem_fw.b10:/system/etc/firmware/modem_fw.b10 \
    device/htc/mystul/firmware/modem_fw.b11:/system/etc/firmware/modem_fw.b11 \
    device/htc/mystul/firmware/modem_fw.b13:/system/etc/firmware/modem_fw.b13 \
    device/htc/mystul/firmware/modem_fw.b14:/system/etc/firmware/modem_fw.b14 \
    device/htc/mystul/firmware/modem_fw.b21:/system/etc/firmware/modem_fw.b21 \
    device/htc/mystul/firmware/modem_fw.b22:/system/etc/firmware/modem_fw.b22 \
    device/htc/mystul/firmware/modem_fw.b23:/system/etc/firmware/modem_fw.b23 \
    device/htc/mystul/firmware/modem_fw.b25:/system/etc/firmware/modem_fw.b25 \
    device/htc/mystul/firmware/modem_fw.b26:/system/etc/firmware/modem_fw.b26 \
    device/htc/mystul/firmware/modem_fw.b29:/system/etc/firmware/modem_fw.b29 \
    device/htc/mystul/firmware/modem_fw.mdt:/system/etc/firmware/modem_fw.mdt \
    device/htc/mystul/firmware/modem.b00:/system/etc/firmware/modem.b00 \
    device/htc/mystul/firmware/modem.b01:/system/etc/firmware/modem.b01 \
    device/htc/mystul/firmware/modem.b02:/system/etc/firmware/modem.b02 \
    device/htc/mystul/firmware/modem.b03:/system/etc/firmware/modem.b03 \
    device/htc/mystul/firmware/modem.b04:/system/etc/firmware/modem.b04 \
    device/htc/mystul/firmware/modem.b05:/system/etc/firmware/modem.b05 \
    device/htc/mystul/firmware/modem.b06:/system/etc/firmware/modem.b06 \
    device/htc/mystul/firmware/modem.b07:/system/etc/firmware/modem.b07 \
    device/htc/mystul/firmware/modem.b08:/system/etc/firmware/modem.b08 \
    device/htc/mystul/firmware/modem.b09:/system/etc/firmware/modem.b09 \
    device/htc/mystul/firmware/modem.b10:/system/etc/firmware/modem.b10 \
    device/htc/mystul/firmware/modem.mdt:/system/etc/firmware/modem.mdt \
    device/htc/mystul/firmware/q6.b00:/system/etc/firmware/q6.b00 \
    device/htc/mystul/firmware/q6.b01:/system/etc/firmware/q6.b01 \
    device/htc/mystul/firmware/q6.b03:/system/etc/firmware/q6.b03 \
    device/htc/mystul/firmware/q6.b04:/system/etc/firmware/q6.b04 \
    device/htc/mystul/firmware/q6.b05:/system/etc/firmware/q6.b05 \
    device/htc/mystul/firmware/q6.b06:/system/etc/firmware/q6.b06 \
    device/htc/mystul/firmware/q6.mdt:/system/etc/firmware/q6.mdt

# GPS
#PRODUCT_PACKAGES += \
#    gps.mystul \

# Torch
PRODUCT_PACKAGES += \
    Torch

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += en_US hdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/htc/mystul/mystul-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Discard inherited values and use our own instead.
PRODUCT_DEVICE := mystul
PRODUCT_NAME := mystul
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC First
PRODUCT_MANUFACTURER := HTC
