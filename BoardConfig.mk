# Copyright 2014 The Android Open Source Project
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

# Platform Config
PRODUCT_PLATFORM := sm6150
include device/motorola/sm6150-common/PlatformConfig.mk

# Init
TARGET_INIT_VENDOR_LIB := //device/motorola/hanoip:init_motorola_hanoip
TARGET_RECOVERY_DEVICE_MODULES := init_motorola_hanoip

# Boot Header
BOARD_BOOT_HEADER_VERSION := 3

# Partition information
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := $(BOARD_BOOTIMAGE_PARTITION_SIZE)

BOARD_SUPER_PARTITION_SIZE := 10804527104
BOARD_SUPER_PARTITION_GROUPS := mot_dynamic_partitions

# DYNAMIC_PARTITIONS_SIZE = (SUPER_PARTITION_SIZE / 2) - 4MB
BOARD_MOT_DYNAMIC_PARTITIONS_SIZE := 6169821184
BOARD_MOT_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    system_ext \
    product \
    vendor

# Build system_ext image
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_JOURNAL_SIZE := 0
BOARD_SYSTEM_EXTIMAGE_EXTFS_INODE_COUNT := 4096

# This target has no recovery partition
TARGET_NO_RECOVERY := true
