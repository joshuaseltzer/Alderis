ARCHS = arm64 arm64e
TARGET = iphone:14.5:12.0
FINALPACKAGE = 1
include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = libcolorpicker

libcolorpicker_FILES = $(wildcard *.m)
libcolorpicker_PRIVATE_FRAMEWORKS = Preferences
libcolorpicker_EXTRA_FRAMEWORKS = Alderis
libcolorpicker_CFLAGS = -Wno-unguarded-availability

include $(THEOS_MAKE_PATH)/library.mk
