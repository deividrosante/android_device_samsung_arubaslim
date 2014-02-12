LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

include $(CLEAR_VARS)
LOCAL_MODULE       := fstab.$(SAMSUNG_BOOTLOADER)
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := root/fstab.arubaslim
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := initlogo.rle
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := root/initlogo.rle
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.$(SAMSUNG_BOOTLOADER).rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := root/init.qcom.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.target.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := root/init.target.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.$(SAMSUNG_BOOTLOADER).usb.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := root/init.qcom.usb.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := ueventd.$(SAMSUNG_BOOTLOADER).rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := root/ueventd.qcom.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)