$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
# $(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# Otherwise, If you have 32-bit device, add the below line instead of above line
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace ${_REL_} with your Device Name's Value.
# Replace ${_FFKJ_} with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/${_FFKJ_}/${_REL_}/prebuilt/kernel:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := ${_REL_}
PRODUCT_NAME := omni_${_REL_}
PRODUCT_BRAND := ${_FFKJ_}
PRODUCT_MODEL := ${_REL_}
PRODUCT_MANUFACTURER := ${_FFKJ_}

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="alps/full_8227L_demo/8227L_demo:8.1.0/O11019/1571038753:userdebug/test-keys"
    PRIVATE_BUILD_DESC="full_8227L_demo-userdebug 8.1.0 O11019 1571038753 test-keys"
