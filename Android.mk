LOCAL_PATH := $(call my-dir)

APP_ABI := x86

#libcurl库
include $(CLEAR_VARS)
LOCAL_MODULE := libcurl
LOCAL_SRC_FILES := $(LOCAL_PATH)/$(APP_ABI)/curl/lib/libcurl.so
include $(PREBUILT_SHARED_LIBRARY) 
# include $(PREBUILT_STATIC_LIBRARY) 

#libssl库
include $(CLEAR_VARS)
LOCAL_MODULE :=libssl
LOCAL_SRC_FILES := $(LOCAL_PATH)/$(APP_ABI)/openssl/lib/libssl.so
include $(PREBUILT_SHARED_LIBRARY) 
# include $(PREBUILT_STATIC_LIBRARY) 

#libcrpto库
include $(CLEAR_VARS)
LOCAL_MODULE :=libcrypto
LOCAL_SRC_FILES := $(LOCAL_PATH)/$(APP_ABI)/openssl/lib/libcrypto.so 
include $(PREBUILT_SHARED_LIBRARY) 
# include $(PREBUILT_STATIC_LIBRARY) 

#测试程序(以armeabi-v7a为例)
include $(CLEAR_VARS)
LOCAL_MODULE := main
LOCAL_SRC_FILES := main.cpp
LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(APP_ABI)/curl/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(APP_ABI)/openssl/include
LOCAL_LDLIBS := -llog -lz 
#LOCAL_SHARED_LIBRARIES := libcurl
LOCAL_STATIC_LIBRARIES := libcurl

LOCAL_CFLAGS += -pie -fPIE
LOCAL_LDFLAGS += -pie -fPIE

include $(BUILD_EXECUTABLE)
