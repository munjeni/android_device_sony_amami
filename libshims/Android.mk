# Copyright (C) 2015-2016 The CyanogenMod Project
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

LOCAL_PATH := $(call my-dir)

# libshim_cald
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    gui/SensorManager.cpp \
    symbols/Parcel.cpp \
    utils/VectorImpl.cpp

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    external/safe-iop/include \
    system/core/libutils \
    frameworks/native/libs/sensor/include

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libgui \
    libbinder \
    libsensor \
    libutils \
    liblog

LOCAL_MODULE := libshim_cald

LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

# libsony_graphicbuffer
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    ui/GraphicBuffer.cpp \
    ui/GraphicBufferAllocator.cpp \
    ui/GraphicBufferMapper.cpp \
    utils/Looper.cpp \
    utils/VectorImpl.cpp

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    external/safe-iop/include \
    system/core/libutils \
    frameworks/native/libs/sensor/include

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libhardware \
    liblog \
    libui \
    libsync \
    libutils

LOCAL_MODULE := libsony_graphicbuffer

LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := wvm.c

LOCAL_SHARED_LIBRARIES := libstagefright_foundation

LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE := libshims_wvm
LOCAL_MODULE_TAGS := optional

LOCAL_32_BIT_ONLY := true

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := signal.c
LOCAL_MODULE := libsony_signal
LOCAL_SHARED_LIBRARIES := libc
LOCAL_MODULE_TAGS := optional
LOCAL_32_BIT_ONLY := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := idd.c
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE := libshims_idd
LOCAL_MODULE_TAGS := optional
LOCAL_32_BIT_ONLY := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := libsony_camera.cpp
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE := libsony_camera
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_32_BIT_ONLY := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := libshim_atomic.cpp
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SHARED_LIBRARIES := libcutils
LOCAL_MODULE := libshim_atomic
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_32_BIT_ONLY := true
include $(BUILD_SHARED_LIBRARY)

