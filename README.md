# OnePlus SM8650 Common Device Tree

This repository contains the common device tree for OnePlus devices based on the Qualcomm SM8650 platform (Snapdragon 8 Gen 3), optimized for LineageOS compatibility.

## Supported Devices

- OnePlus 13R
- OnePlus 13
- OnePlus 13 Pro

## Copyright

```
#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
```

## Common Features

This repository contains common configurations and overlays for OnePlus devices based on the SM8650 platform, including:

- Audio configurations
- Display settings
- Power management
- Thermal configurations
- USB configurations
- WiFi and Bluetooth settings

## Dependencies

- [android_vendor_oneplus_13r](https://github.com/your-github-username/android_vendor_oneplus_13r)
- [android_kernel_oneplus_13r](https://github.com/your-github-username/android_kernel_oneplus_13r)

## Building

```bash
# Initialize LineageOS build environment
source build/envsetup.sh

# Lunch the device
lunch lineage_13r-userdebug

# Build
mka bacon
``` 