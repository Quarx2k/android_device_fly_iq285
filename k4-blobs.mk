# Copyright (C) 2012 The Android Open Source Project
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

device_path = device/fly/iq285

DEVICE_PREBUILT := ${device_path}/prebuilt

# EGL Stuff
PRODUCT_COPY_FILES += \
	$(DEVICE_PREBUILT)/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
	$(DEVICE_PREBUILT)/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
	$(DEVICE_PREBUILT)/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
	$(DEVICE_PREBUILT)/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \

# Etc
PRODUCT_COPY_FILES += \
	$(DEVICE_PREBUILT)/etc/firmware/fw_bcm4329.bin:system/etc/firmware/fw_bcm4329.bin \
	$(DEVICE_PREBUILT)/etc/firmware/fw_bcm4329_hotspot.bin:system/etc/firmware/fw_bcm4329_hotspot.bin \
	$(DEVICE_PREBUILT)/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
	$(DEVICE_PREBUILT)/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
	$(DEVICE_PREBUILT)/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
	$(DEVICE_PREBUILT)/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
	$(DEVICE_PREBUILT)/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
	$(DEVICE_PREBUILT)/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(DEVICE_PREBUILT)/etc/thermald.conf:system/etc/thermald.conf \

# Modules
PRODUCT_COPY_FILES += $(DEVICE_PREBUILT)/lib/modules/bcm4329.ko:/system/lib/modules/bcm4329.ko

# Bins \
PRODUCT_COPY_FILES += $(DEVICE_PREBUILT)/bin/BCM4329B1.hcd:/system/bin/BCM4329B1.hcd \
                      $(DEVICE_PREBUILT)/bin/port-bridge:/system/bin/port-bridge \
                      $(DEVICE_PREBUILT)/bin/qmuxd:/system/bin/qmuxd \
                      $(DEVICE_PREBUILT)/bin/thermald:/system/bin/thermald \
                      $(DEVICE_PREBUILT)/bin/time_daemon:/system/bin/time_daemon \
                      $(DEVICE_PREBUILT)/bin/rmt_storage:/system/bin/rmt_storage \
                      $(DEVICE_PREBUILT)/bin/battery_charging:/system/bin/battery_charging \

#Libs
PRODUCT_COPY_FILES += $(DEVICE_PREBUILT)/lib/libaudioalsa.so:/obj/lib/libaudioalsa.so \
                      $(DEVICE_PREBUILT)/lib/libaudioalsa.so:/system/lib/libaudioalsa.so \
                      $(DEVICE_PREBUILT)/lib/libacdbloader.so:/system/lib/libacdbloader.so \
                      $(DEVICE_PREBUILT)/lib/libacdbloader.so:/obj/lib/libacdbloader.so \
                      $(DEVICE_PREBUILT)/lib/libacdbmapper.so:/system/lib/libacdbmapper.so \
                      $(DEVICE_PREBUILT)/lib/libacdbmapper.so:/obj/lib/libacdbmapper.so \

#end of k4-blobs.mk
