include device/cyanogen/msm8916-common/Android.mk 

LOCAL_PATH := $(call my-dir)

ifneq ($(filter black,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
