# Copyright (C) 2016 The Pure Nexus Project
# Copyright (C) 2016 The JDCTeam
# Copyright (C) 2017 Code-OS
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
COS_VERSION = 1.0

ifeq ($(filter-out Official weekly,$(COS_BUILD_TYPE)),)
 PRODUCT_PACKAGES += \
     CodeOTA
endif

ifndef COS_BUILD_TYPE
    COS_BUILD_TYPE := Unofficial
endif

COS_MOD_VERSION := Code-OS-$(COS_VERSION)-$(COS_BUILD)-$(shell date -u +%Y%m%d-%H%M)-$(COS_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.cos.version=$(COS_VERSION) \
  ro.cos.releasetype=$(COS_BUILD_TYPE) \
  ro.mod.version=$(COS_BUILD_TYPE)-$(COS_VERSION)

COS_DISPLAY_VERSION := $(COS_MOD_VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.cos.display.version=$(COS_DISPLAY_VERSION)
