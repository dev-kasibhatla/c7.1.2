USE_CAMERA_STUB := true

include device/cyanogen/msm8916-common/BoardConfigCommon.mk
# inherit from the proprietary version
-include vendor/xolo/black/BoardConfigVendor.mk
#bootloader

androidboot.bootdevice=soc.0  earlyprintk 
androidboot.selinux=permissive

#TARGET_BOARD_PLATFORM_VARIANT := msm8916
#kernel
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_SOURCE := kernel/xolo/black
TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_USES_UNCOMPRESSED_KERNEL := true
TARGET_KERNEL_CONFIG := mirageplus01a_msm_defconfig


# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12907953152
BOARD_FLASH_BLOCK_SIZE := 131072


BOARD_HAS_NO_SELECT_BUTTON := true

# twrp
#RECOVERY_VARIANT := twrp
#TW_THEME:= portrait_hdpi
#RECOVERY_SDCARD_ON_DATA:= true

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab
# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy


