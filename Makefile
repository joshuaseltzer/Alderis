ARCHS = arm64 arm64e
TARGET = iphone:14.5:12.0

FRAMEWORK_OUTPUT_DIR = $(THEOS_OBJ_DIR)/install/Library/Frameworks

export ADDITIONAL_CFLAGS = -fobjc-arc -Wextra -Wno-unused-parameter -F$(FRAMEWORK_OUTPUT_DIR)
export ADDITIONAL_LDFLAGS = -F$(FRAMEWORK_OUTPUT_DIR)

include $(THEOS)/makefiles/common.mk

XCODEPROJ_NAME = Alderis

FINALPACKAGE = 1

Alderis_XCODEFLAGS = DYLIB_INSTALL_NAME_BASE=/Library/Frameworks BUILD_LIBRARY_FOR_DISTRIBUTION=YES ARCHS="$(ARCHS)"

SUBPROJECTS = lcpshim

include $(THEOS_MAKE_PATH)/xcodeproj.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
