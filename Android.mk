ifneq ($(filter ${_REL_},$(TARGET_DEVICE)),)
LOCAL_PATH := device/${_FFKJ_}/${_REL_}
include $(call all-makefiles-under,$(LOCAL_PATH))
