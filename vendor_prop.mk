#
# Copyright (C) 2019, The Linux Foundation. All rights reserved.
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.job_delay=true \
    persist.sys.mcd_config_file=/system/etc/mcd_default.conf \
    ro.build.shutdown_timeout=0 \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp \
    sys.vendor.shutdown.waittime=500 \
    persist.vendor.qcomsysd.enabled=1 \

# ART
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.image-dex2oat-filter=speed \
    ro.vendor.qti.am.reschedule_service=true \
    ro.sys.fw.dex2oat_thread_count=8 \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.dex2oat-threads=8

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio.deep_buffer.media=true \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    ro.af.client_heap_size_kbyte=7168 \
    ro.vendor.audio.soundtrigger=nuance \
    ro.vendor.audio.soundtrigger.lowpower=false \
    ro.vendor.audio.sdk.fluencetype=fluence \
    ro.vendor.audio.sdk.ssr=false \
    ro.vendor.audio.sos=true \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.hifi.int_codec=true \
    persist.vendor.audio.hw.binder.size_kbyte=1024 \
    persist.vendor.audio.ras.enabled=false \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.audio_hal.period_multiplier=3 \
    vendor.audio.adm.buffering.ms=2 \
    vendor.audio_hal.in_period_size=144 \
    vendor.audio.hw.aac.encoder=true \
    vendor.audio.noisy.broadcast.delay=600 \
    vendor.audio.offload.buffer.size.kb=64 \
    vendor.audio.offload.pstimeout.secs=3 \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    vendor.audio.offload.track.enable=true \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.voice.path.for.pcm.voip=true \
    vendor.audio.tunnel.encode=false \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio.hw.binder.size_kbyte=1024 \
    vendor.qcom.bluetooth.soc=cherokee \
    persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxhd-aac

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m

# Density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=410

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true
# hal3
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.HAL3.enabled=1

# hal1 apps
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.camera.hal1.packagelist=com.whatsapp,com.intsig.camscanner,com.instagram.android,com.snapchat.android

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.gralloc.enable_fb_ubwc=1 \
    debug.sf.disable_backpressure=1 \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.hw=1 \
    debug.sf.latch_unsignaled=1 \
    dev.pm.dyn_samplingrate=1 \
    persist.demo.hdmirotationlock=false \
    sdm.debug.disable_skip_validate=1 \
    vendor.display.disable_skip_validate=1 \
    vendor.display.enable_default_color_mode=0 \
    vendor.gralloc.enable_fb_ubwc=1 \
    vendor.video.disable.ubwc=1

# OpenGL version
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# Radio/IMS - voLTE/voWIFI
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.ims_volte_enable=1 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.radio.calls.on.ims=1 \
    persist.radio.VT_CAM_INTERFACE=2 \
    persist.radio.multisim.config=dsds \
    persist.vendor.data.iwlan.enable=true \
    persist.vendor.qti.telephony.vt_cam_interface=1 \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.atfwd.start=true \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.data_con_rprt=1 \
    persist.vendor.radio.ignore_dom_time=15 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.snapshot_enabled=1 \
    persist.vendor.radio.snapshot_timer=5

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sdk.sensors.gestures=false \
    ro.vendor.sensors.cmc=false \
    ro.vendor.sensors.dev_ori=true \
    ro.vendor.sensors.facing=false \
    ro.vendor.sensors.mot_detect=true \
    ro.vendor.sensors.pmd=true \
    ro.vendor.sensors.pug=true \
    ro.vendor.sensors.sta_detect=true

# Volume steps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.media_vol_steps=25 \
    ro.config.vc_call_vol_steps=7

# WFD
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1 \
    persist.hwc.enable_vds=1 \
    persist.sys.wfd.virtual=0
