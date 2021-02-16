ifneq ($(filter ${_FF_5000_},$(TARGET_DEVICE)),)
LOCAL_PATH := device/${_VENDORNAME_}/${_FF_5000_}
include $(call all-makefiles-under,$(LOCAL_PATH))
