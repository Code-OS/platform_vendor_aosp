# Copyright (C) 2016 The Pure Nexus Project
# Copyright (C) 2016 The JDCTeam
# Copyright (C) 2016 The Code-OS Team
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

#Code-OS Versioning
Code-OS_VERSION = v1.0

ifeq ($(Code-OS_BUILD_TYPE), SUPPORTED)
 PRODUCT_PACKAGES += \
     Code-OSOTA
endif

ifndef Code-OS_BUILD_TYPE
    Code-OS_BUILD_TYPE := UNSUPPORTED
endif

Code-OS_MOD_VERSION := Code-OS-$(Code-OS_VERSION)-$(Code-OS_BUILD)-$(shell date -u +%Y%m%d-%H%M)-$(Code-OS_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.code-os.version=$(Code-OS_VERSION) \
  ro.aos.releasetype=$(Code-OS_BUILD_TYPE) \
  ro.mod.version=$(Code-OS_BUILD_TYPE)-$(Code-OS_VERSION)

Code-OS_DISPLAY_VERSION := $(Code-OS_MOD_VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.code-os.display.version=$(Code-OS_DISPLAY_VERSION)
