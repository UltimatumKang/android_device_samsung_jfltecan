# Inherit AOSP device configuration for jflteatt.
$(call inherit-product, device/samsung/jfltecan/full_jfltecan.mk)

# Inherit common product files.
$(call inherit-product, vendor/ukg/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/ukg/config/gsm.mk)

# Mako Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/ukg/overlay/toro

# Setup device specific product configuration.
PRODUCT_NAME := ukg_jfltecan
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := jfltecan
PRODUCT_MODEL := SGS4
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltevl TARGET_DEVICE=jfltecan BUILD_FINGERPRINT="samsung/jfltevl/jfltecan:4.2.2/JDQ39/I337MVLUAMDJ:user/release-keys" PRIVATE_BUILD_DESC="jfltevl-user 4.2.2 JDQ39 I337MVLUAMDJ release-keys"

# Copy mako specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ukg/prebuilt/hybrid_xhdpi.conf:system/etc/beerbong/properties.conf \
    vendor/ukg/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/ukg/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
