ifneq ($(filter rhine,$(PRODUCT_PLATFORM)),)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    macaddrsetup.c

LOCAL_SHARED_LIBRARIES := \
    libta \
    liblog \
    libcutils

LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE := macaddrsetup
LOCAL_MODULE_TAGS := optional

LOCAL_INIT_RC := macaddrsetup.rc

include $(BUILD_EXECUTABLE)

endif
