# Copyright (C) 2016 The CyanogenMod Project

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/zuk/z2pro/proprietary/lib,system/lib)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/zuk/z2pro/proprietary/bin,system/bin)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/zuk/z2pro/proprietary/etc,system/etc)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/zuk/z2pro/proprietary/vendor,system/vendor)
#-include vendor/extra/devices.mk
