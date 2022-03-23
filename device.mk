#
# Copyright (C) 2022 OrangeFox Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Default device path
LOCAL_PATH := device/$(PRODUCT_BRAND)/$(TARGET_DEVICE)

# Exclude APEX
TW_EXCLUDE_APEX := true

# Platform version
PLATFORM_SECURITY_PATCH := 2127-12-31
PLATFORM_VERSION := 127
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# Dependecies
PRODUCT_COPY_FILES += \
    $(OUT_DIR)/target/product/olive/obj/SHARED_LIBRARIES/libandroidicu_intermediates/libandroidicu.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libandroidicu.so

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl.recovery

# Qcom decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# OEM otacert
PRODUCT_EXTRA_RECOVERY_KEYS += \
    vendor/recovery/security/miui
