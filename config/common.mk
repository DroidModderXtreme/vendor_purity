# Generic product
PRODUCT_NAME := purity
PRODUCT_BRAND := purity
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/purity/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1

# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    net.bt.name=Android \
    ro.media.enc.hprof.vid.bps=8000000 \
    ro.media.enc.hprof.vid.fps=65 \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.jpeg.quality=100 \
    ro.min.fling_velocity=10000

# SIM Toolkit
PRODUCT_PACKAGES := \
    Stk

# DSPManager and libs necessary for it
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

# Common Keyboard w/ Gestures - Common lib
PRODUCT_COPY_FILES += \
    vendor/purity/proprietary/common/app/LatinIME.apk:system/app/LatinIME.apk \
    vendor/purity/proprietary/common/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so \
    vendor/purity/proprietary/common/lib/libjni_filtershow_filters.so:system/lib/libjni_filtershow_filters.so \
    vendor/purity/proprietary/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so \
    vendor/purity/proprietary/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Copy bootanimation
PRODUCT_COPY_FILES += \
    vendor/purity/proprietary/common/media/bootanimation.zip:system/media/bootanimation.zip

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
