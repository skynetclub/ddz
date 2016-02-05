#cd /cygdrive/d/cocos2dx_example/workplace/ddz/proj.android && /cygdrive/c/Cocos/frameworks/android-ndk-windows/android-ndk-r10d/ndk-build NDK_PROJECT_PATH=. NDK_APPLICATION_MK=./jni/Application.mk  NDK_MODULE_PATH=/cygdrive/c/Cocos/frameworks/cocos2d-x-3.8.1/

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)



$(call import-add-path,  /cygdrive/c/Cocos/frameworks/cocos2d-x-3.8.1/extensions)
$(call import-add-path,  /cygdrive/c/Cocos/frameworks/cocos2d-x-3.8.1/external)
$(call import-add-path,  /cygdrive/c/Cocos/frameworks/cocos2d-x-3.8.1/cocos)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/GameScene.cpp \
                   ../../Classes/Player.cpp \
                   ../../Classes/Poker.cpp \
                   ../../Classes/Tool.cpp

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../Classes \
$(LOCAL_PATH)../../Classes/data/ \
/cygdrive/e/forthxu/download/protobuf-2.5.0-bz2/ \
/cygdrive/e/forthxu/download/protobuf-2.5.0-bz2/src/ \
/cygdrive/c/Cocos/frameworks/cocos2d-x-3.8.1/ \
/cygdrive/c/Cocos/frameworks/cocos2d-x-3.8.1/external/ \
/cygdrive/c/Cocos/frameworks/cocos2d-x-3.8.1/extensions/ \
/cygdrive/c/Cocos/frameworks/cocos2d-x-3.8.1/cocos/ \
/cygdrive/c/Cocos/frameworks/cocos2d-x-3.8.1/cocos/2d/ \
/cygdrive/c/Cocos/frameworks/cocos2d-x-3.8.1/cocos/2d/base/ \
/cygdrive/c/Cocos/frameworks/cocos2d-x-3.8.1/cocos/network/ \
/cygdrive/c/Cocos/frameworks/cocos2d-x-3.8.1/cocos/platform/ \
/cygdrive/c/Cocos/frameworks/cocos2d-x-3.8.1/cocos/platform/android/ \
/cygdrive/e/forthxu/download/protobuf-2.5.0/protobuf-2.5.0/vsprojects/Release/

# _COCOS_HEADER_ANDROID_BEGIN
# _COCOS_HEADER_ANDROID_END


LOCAL_STATIC_LIBRARIES := cocos2dx_static

# _COCOS_LIB_ANDROID_BEGIN
# _COCOS_LIB_ANDROID_END

include $(BUILD_SHARED_LIBRARY)

#$(call import-module,./prebuilt-mk)
$(call import-module,cocos)
$(call import-module,extensions)

# _COCOS_LIB_IMPORT_ANDROID_BEGIN
# _COCOS_LIB_IMPORT_ANDROID_END
