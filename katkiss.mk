#
# Copyright (C) 2011-2016 The Android Open Source Project
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

# Inherit common kat stuff
$(call inherit-product, vendor/kat/common.mk)

# Inherit device configurations
$(call inherit-product, device/asus/tf300t/device.mk)

# Device display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Device identifications
PRODUCT_DEVICE := tf300t
PRODUCT_NAME := katkiss_tf300t
PRODUCT_BRAND := asus
PRODUCT_MANUFACTURER := asus
PRODUCT_MODEL := tf300t

# Build fingerprints
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=EeePad BUILD_FINGERPRINT="asus/WW_epad/EeePad:4.2.1/JOP40D/WW_epad-10.6.1.27.5-20130902:user/release-keys" PRIVATE_BUILD_DESC="WW_epad-user 4.2.1 JOP40D WW_epad-10.6.1.27.5-20130902 release-keys"

