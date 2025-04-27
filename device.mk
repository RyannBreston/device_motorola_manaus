# Inherit from vendor
$(call inherit-product, vendor/motorola/manaus/manaus-vendor.mk)

# Device characteristics
PRODUCT_DEVICE := manaus
PRODUCT_NAME := lineage_manaus
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Motorola Edge 40 Neo
PRODUCT_MANUFACTURER := motorola

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Build info
PRODUCT_GMS_CLIENTID_BASE := android-motorola
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="manaus_retail-user 14 U1TMS34.107-34-9-3-1 789012 release-keys" \
    TARGET_DEVICE=manaus \
    PRODUCT_NAME=manaus \
    BUILD_FINGERPRINT=motorola/manaus_retail/manaus:14/U1TMS34.107-34-9-3-1/789012:user/release-keys

# Camera
PRODUCT_PACKAGES += \
    libcamera2ndk_vendor \
    libgui_vendor \
    android.hardware.camera.provider@2.5-impl \
    android.hardware.camera.provider@2.5-service_64 \
    Snap \
    libstdc++.vendor

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.HAL3.enabled=1 \
    vendor.camera.aux.packagelist=org.lineageos.snap,com.motorola.camera3

# Audio
PRODUCT_PACKAGES += \
    audio.primary.mt6877 \
    audio.usb.default \
    audio.r_submix.default \
    libaudiofoundation \
    libtinyalsa \
    libtinycompress \
    libaudiospdif \
    android.hardware.audio@7.0-impl \
    android.hardware.audio.service \
    android.hardware.audio.effect@7.0-impl

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration_7_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration_7_0.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.audio.stereo=true \
    ro.audio.usb=true \
    ro.vendor.audio.sos=true
