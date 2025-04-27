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
    PRIVATE_BUILD_DESC="manaus-user 13 T2T33.3-16-2-6 123456 release-keys" \
    TARGET_DEVICE=manaus \
    PRODUCT_NAME=manaus
