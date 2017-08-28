USE_CAMERA_STUB := true

#include device/cyanogen/msm8916-common/BoardConfigCommon.mk
# inherit from the proprietary version
-include vendor/xolo/black/BoardConfigVendor.mk
#bootloader

VENDOR_PATH := device/xolo/black
# Include board config fragments
include $(VENDOR_PATH)/board/*.mk

#kernel
androidboot.bootdevice=soc.0  earlyprintk 
androidboot.selinux=permissive
movablecore=160M
TARGET_BOARD_PLATFORM_VARIANT := msm8939
vmalloc=400M
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_SOURCE := kernel/xolo/black
TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_USES_UNCOMPRESSED_KERNEL := true
TARGET_KERNEL_CONFIG := mirageplus01a_msm_defconfig
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_PREBUILT_KERNEL := $(VENDOR_PATH)/kernel

# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432 #32768
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432 	#32768
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648	#2097152
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12780026880   #12480495
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456 	#262144
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432   #32768

TARGET_SYSTEM_PROP += $(VENDOR_PATH)/system.prop

BOARD_HAS_NO_SELECT_BUTTON := true

# twrp
#RECOVERY_VARIANT := twrp
#TW_THEME:= portrait_hdpi
#RECOVERY_SDCARD_ON_DATA:= true


# SELinux
#BOARD_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy


