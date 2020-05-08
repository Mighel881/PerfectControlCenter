THEOS_DEVICE_IP = ipad
ARCHS = arm64 arm64e
TARGET = iphone:clang:13.2:13.2

INSTALL_TARGET_PROCESSES = SpringBoard
GO_EASY_ON_ME = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PerfectControlCenter
PerfectControlCenter_FILES = PerfectControlCenter.xm
PerfectControlCenter_CFLAGS = -fobjc-arc
PerfectControlCenter_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += Preferences
include $(THEOS_MAKE_PATH)/aggregate.mk