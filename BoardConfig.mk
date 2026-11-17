DEVICE_PATH := device/sony/poplar
COMMON_PATH := device/sony/yoshino-common
include $(COMMON_PATH)/BoardConfigOrangeFox.mk
TARGET_KERNEL_CONFIG += sony/poplar.config

PRODUCT_PLATFORM := msm8998
TARGET_BOOTLOADER_BOARD_NAME := G8341
TARGET_SCREEN_DENSITY := 430
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.qcom
TARGET_OTA_ASSERT_DEVICE := poplar,poplar_canada,poplar_dsds,poplar_kddi,poplardcm,G8341,G8342,SO-01K,SOV36,701SO
FOX_VARIANT := XZ1
FOX_TARGET_DEVICES := poplar,poplar_canada,poplar_dsds,poplar_kddi,poplardcm,G8341,G8342,SO-01K,SOV36,701SO
