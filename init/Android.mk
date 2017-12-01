ifeq ($(TARGET_INIT_VENDOR_LIB),libinit_rhine)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
    system/core/init

LOCAL_STATIC_LIBRARIES := \
    libbase

LOCAL_CFLAGS := -Wall

LOCAL_SRC_FILES := \
    init_rhine.cpp

LOCAL_MODULE := libinit_rhine
LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)

endif
