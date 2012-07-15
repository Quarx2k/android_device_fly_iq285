# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := k4

TARGET_BOOTANIMATION_NAME := vertical-540x960

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/fly/iq285/device_k4.mk)

# Device naming
PRODUCT_DEVICE := iq285
PRODUCT_NAME := cm_iq285
PRODUCT_BRAND := fly
PRODUCT_MODEL := Fly_IQ285
PRODUCT_MANUFACTURER := FLY

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=Fly_IQ285 BUILD_FINGERPRINT=tmous/Fly_IQ285/k4:4.0.3/IML74K/356011.14:user/release-keys
