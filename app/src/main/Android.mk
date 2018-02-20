LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, java)
LOCAL_SDK_VERSION := current
LOCAL_PACKAGE_NAME := AppFuzzer
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := platform
LOCAL_PROGUARD_ENABLED := disabled

LOCAL_STATIC_JAVA_LIBRARIES := android-support-v4
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v7-appcompat

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_RESOURCE_DIR += prebuilts/sdk/current/support/v7/appcompat/res

LOCAL_AAPT_FLAGS := --auto-add-overlay

include $(BUILD_PACKAGE)

LOCAL_AAPT_FLAGS := $(filter-out -z, $(LOCAL_AAPT_FLAGS))
