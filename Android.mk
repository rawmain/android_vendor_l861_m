LOCAL_PATH := $(call my-dir)


$(info [Decker] copying DP Framework proprietary blobs)

include $(CLEAR_VARS)
LOCAL_MODULE = libdpframework
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_OWNER = $VENDOR
LOCAL_MODULE_SUFFIX = .so
LOCAL_PROPRIETARY_MODULE = true
LOCAL_MULTILIB = 64
LOCAL_SRC_FILES_64 = proprietary/lib64/libdpframework.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE = libdpframework
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_OWNER = mtk
LOCAL_MODULE_SUFFIX = .so
LOCAL_PROPRIETARY_MODULE = true
LOCAL_MULTILIB = 32
LOCAL_SRC_FILES_32 = proprietary/lib/libdpframework.so
include $(BUILD_PREBUILT)


$(info [SscSPs] copying APK files)

include $(CLEAR_VARS)
LOCAL_MODULE := AdAway
LOCAL_MODULE_OWNER := amoi
LOCAL_SRC_FILES := proprietary/app/$(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := RootExplorer
LOCAL_MODULE_OWNER := amoi
LOCAL_SRC_FILES := proprietary/app/$(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := SDMaid
LOCAL_MODULE_OWNER := amoi
LOCAL_SRC_FILES := proprietary/app/$(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := AudioFX
LOCAL_MODULE_OWNER := amoi
LOCAL_SRC_FILES := proprietary/priv-app/$(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)
