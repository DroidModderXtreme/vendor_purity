# Inherit AOSP device configuration for grouper.
$(call inherit-product, device/sony/kumquat/full_kumquat.mk)

# Inherit common product files.
$(call inherit-product, vendor/purity/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := purity_kumquat
PRODUCT_BRAND := sony
PRODUCT_DEVICE := kumquat
PRODUCT_MODEL := Xperia U
PRODUCT_MANUFACTURER := sony

# Inherit media effect blobs
-include vendor/purity/config/common_media_effects.mk
