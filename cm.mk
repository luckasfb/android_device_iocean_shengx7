# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/full_shengx7.mk)

PRODUCT_RELEASE_NAME := shengx7

#CM_EXPERIMENTAL := true
#CM_EXTRAVERSION := rc1

# Setup device configuration
PRODUCT_NAME := cm_shengx7
PRODUCT_DEVICE := shengx7
PRODUCT_BRAND := iocean
PRODUCT_MANUFACTURER := iocean
PRODUCT_MODEL := shengx7

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=iocean/shengx7/shengx7:4.2.1/JOP40D/1373017422:user/test-keys PRIVATE_BUILD_DESC="shengx7-user 4.2.1 JOP40D eng.scm.1373017422 test-keys"
