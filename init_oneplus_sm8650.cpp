/*
 * Copyright (C) 2024 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <android-base/logging.h>
#include <android-base/properties.h>
#include <android-base/strings.h>

#include <string>
#include <vector>

namespace android {
namespace init {

void vendor_load_properties() {
    std::string device = android::base::GetProperty("ro.boot.device", "");
    std::string model = android::base::GetProperty("ro.boot.product.model", "");

    if (device == "13r") {
        android::base::SetProperty("ro.product.model", "OnePlus 13R");
        android::base::SetProperty("ro.product.device", "13r");
        android::base::SetProperty("ro.product.name", "OnePlus13R");
    }

    // Set hardware revision
    std::string hw_revision = android::base::GetProperty("ro.boot.hw_revision", "");
    if (!hw_revision.empty()) {
        android::base::SetProperty("ro.product.hw.revision", hw_revision);
    }

    // Set display panel properties
    std::string panel_name = android::base::GetProperty("ro.boot.display.panel", "");
    if (!panel_name.empty()) {
        android::base::SetProperty("ro.display.panel", panel_name);
    }
}

}  // namespace init
}  // namespace android 