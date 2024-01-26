/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <sys/stat.h>

static void workaround_snet_properties() {
    chmod("/sys/fs/selinux/enforce", 0640);
    chmod("/sys/fs/selinux/policy", 0440);
}

void vendor_load_properties() {
    // Workaround SafetyNet
    workaround_snet_properties();
}