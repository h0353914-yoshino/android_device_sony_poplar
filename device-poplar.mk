$(call inherit-product, $(COMMON_PATH)/device-common.mk)

# recovery image 不需要完整 Android kernel VINTF metadata
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)
