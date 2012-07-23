export THEOS_DEVICE_IP=192.168.1.71
include theos/makefiles/common.mk

TOOL_NAME = vibrate
vibrate_FILES = main.mm
vibrate_FRAMEWORKS = AudioToolbox

include $(THEOS_MAKE_PATH)/tool.mk
