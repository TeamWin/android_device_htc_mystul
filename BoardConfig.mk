USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/mystul/BoardConfigVendor.mk

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 user_debug=31
BOARD_KERNEL_BASE := 0x80400000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01400000

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610611712
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13220446208
BOARD_FLASH_BLOCK_SIZE := 131072

# Custom Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_PREBUILT_RECOVERY_KERNEL := device/htc/mystul/kernel
TARGET_RECOVERY_INITRC := device/htc/mystul/recovery/init.rc
