$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_PLATFORM := msm8998
DEVICE_PATH := device/sony/poplar
COMMON_PATH := device/sony/yoshino-common
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH) $(COMMON_PATH)
PRODUCT_PACKAGES += init.qcom.recovery.rc init.recovery.usb.rc

$(call inherit-product, $(DEVICE_PATH)/device-poplar.mk)

PRODUCT_NAME := twrp_poplar
PRODUCT_DEVICE := poplar
PRODUCT_SHIPPING_API_LEVEL := 27
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8341
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=poplar \
    PRIVATE_BUILD_DESC="G8341-user 9 47.2.A.11.228 3311891731 release-keys"
BUILD_FINGERPRINT := Sony/G8341/G8341:9/47.2.A.11.228/3311891731:user/release-keys
PRODUCT_PROPERTY_OVERRIDES += ro.vendor.usb.pid_suffix=1F3
