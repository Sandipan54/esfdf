ARCHS = arm64 #arm64e
DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1
export THEOS=/var/theos
ARCHS = arm64 
DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1
include $(THEOS)/makefiles/common.mk
TWEAK_NAME = Virus
Virus_FRAMEWORKS = UIKit Foundation Security QuartzCore CoreGraphics CoreText IOKit
Virus_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG
Virus_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -Wno-unused-variable -Wno-unused-value
Virus_FILES = $(wildcard Menu/*.m) $(wildcard Menu/*.mm) Menu/FLAnimatedImage.m Menu/DVSwitch.m Menu/FLAnimatedImageView.m
Virus_LIBRARIES += substrate
include $(THEOS_MAKE_PATH)/tweak.mk