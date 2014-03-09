# Check for target product
ifeq (ioap_p880,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

PRODUCT_COPY_FILES += \
    vendor/ioap/prebuilt/720x1280/bootanimation.zip:system/media/bootanimation.zip

# include ParanoidAndroid common configuration
include vendor/ioap/config/ioap_common.mk

# Inherit CM device configuration
$(call inherit-product, device/lge/p880/cm.mk)

PRODUCT_NAME := ioap_p880

endif

