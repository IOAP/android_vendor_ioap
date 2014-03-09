# Check for target product
ifeq (ioap_otter,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_otter

#  
PRODUCT_COPY_FILES += \
    vendor/ioap/prebuilt/common/bootlogo/ioap_logo_480x800.rle:root/logo.rle

# Copy bootanimation
PRODUCT_COPY_FILES += \
    vendor/ioap/prebuilt/480x800/bootanimation.zip:system/media/bootanimation.zip

# include PAC common configuration
include vendor/ioap/config/ioap_common.mk

# Inherit CM device configuration
$(call inherit-product, device/amazon/otter/cm.mk)

PRODUCT_NAME := ioap_otter

endif
