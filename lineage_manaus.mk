# Inherit device configuration
$(call inherit-product, device/motorola/manaus/device.mk)

# Inherit common LineageOS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_DEVICE := manaus
PRODUCT_NAME := lineage_manaus
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Motorola Edge 40 Neo
PRODUCT_MANUFACTURER := motorola

# Release name
PRODUCT_RELEASE_NAME := Motorola Edge 40 Neo
