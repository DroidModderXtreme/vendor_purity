# Inherit AOSP device configuration for grouper.
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/purity/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := purity_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.2.2 JDQ39 573038 release-keys"

# Inherit media effect blobs
-include vendor/purity/config/common_media_effects.mk
