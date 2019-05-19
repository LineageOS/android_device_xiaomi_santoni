#
# Copyright (C) 2018 The LineageOS Project
#
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/xiaomi/santoni

# inherit from common msm8937-common
-include device/xiaomi/msm8937-common/BoardConfigCommon.mk

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_TS_MAKEUP := true

# Kernel
TARGET_KERNEL_CONFIG := lineageos_santoni_defconfig

# Libinit
TARGET_LIBINIT_MSM8937_DEFINES_FILE := $(DEVICE_PATH)/libinit/init_santoni.cpp

# Security patch level
VENDOR_SECURITY_PATCH := 2018-06-01

# SELinux
#BOARD_SEPOLICY_DIRS += \
#    $(DEVICE_PATH)/sepolicy

# Inherit the proprietary files
include vendor/xiaomi/santoni/BoardConfigVendor.mk
