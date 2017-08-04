USE_CAMERA_STUB := true

include device/motorola/msm8916-common/BoardConfigCommon.mk
# inherit from the proprietary version
-include vendor/xolo/black/BoardConfigVendor.mk



TARGET_BOOTLOADER_BOARD_NAME := black


BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=soc.0 lpm_levels.sleep_disabled=1 earlyprintk androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_KERNEL_IMAGE_NAME := Image
#TARGET_KERNEL_SOURCE := kernel/xolo/msm8939
TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_USES_UNCOMPRESSED_KERNEL := true
#TARGET_KERNEL_CONFIG := mirageplus01a_msm_defconfig


# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12907953152
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_PREBUILT_KERNEL := device/xolo/black/prebuilt/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
