PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.job_delay=true \
    persist.sys.mcd_config_file=/system/etc/mcd_default.conf \
    drm.service.enabled=true \
    vendor.video.disable.ubwc=1 \
    persist.vendor.qcomsysd.enabled=1 \
    sys.vendor.shutdown.waittime=500 \
    ro.build.shutdown_timeout=0 \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp \
    ro.opengles.version=196610 \
    vendor.qcom.bluetooth.soc=cherokee \
    af.fast_track_multiplier=1 \
    vendor.audio_hal.period_size=192 \
    persist.vendor.audio.avs.afe_api_version=2 \
    ro.vendor.audio.sdk.fluencetype=fluence \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.fluence.speaker=true \
    vendor.audio.tunnel.encode=false \
    persist.vendor.audio.ras.enabled=false \
    persist.vendor.audio.speaker.prot.enable=true \
    persist.vendor.audio.spkr.cal.duration=100 \
    persist.vendor.audio.spv3.enable=true \
    vendor.audio.offload.buffer.size.kb=64 \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    vendor.audio.offload.track.enable=true \
    audio.deep_buffer.media=true \
    vendor.voice.path.for.pcm.voip=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    ro.vendor.audio.sdk.ssr=false \
    ro.config.media_vol_steps=25 \
    ro.config.vc_call_vol_steps=7 \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.safx.pbe.enabled=false \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.flac.sw.decoder.24bit=true \
    persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxhd-aac \
    persist.bluetooth.a2dp_offload.cap=sbc-aptx-aptxhd-aac \
    ro.vendor.bluetooth.wipower=false
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \
    vendor.audio.hw.aac.encoder=true \
    vendor.fm.a2dp.conc.disabled=true \
    audio.sys.noisy.broadcast.delay=600 \
    persist.vendor.audio.hifi.int_codec=true \
    audio.sys.offload.pstimeout.secs=3

#enable headset calibration
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.volume.headset.gain.depcal=true

#add dynamic feature flags here
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.feature.a2dp_offload.enable=false \
    vendor.audio.feature.afe_proxy.enable=true \
    vendor.audio.feature.anc_headset.enable=true \
    vendor.audio.feature.battery_listener.enable=false \
    vendor.audio.feature.compr_cap.enable=false \
    vendor.audio.feature.compress_in.enable=false \
    vendor.audio.feature.compress_meta_data.enable=true \
    vendor.audio.feature.compr_voip.enable=true \
    vendor.audio.feature.concurrent_capture.enable=false \
    vendor.audio.feature.custom_stereo.enable=true \
    vendor.audio.feature.display_port.enable=true \
    vendor.audio.feature.dsm_feedback.enable=false \
    vendor.audio.feature.dynamic_ecns.enable=false \
    vendor.audio.feature.ext_hw_plugin.enable=false \
    vendor.audio.feature.external_dsp.enable=false \
    vendor.audio.feature.external_speaker.enable=false \
    vendor.audio.feature.external_speaker_tfa.enable=false \
    vendor.audio.feature.fluence.enable=true \
    vendor.audio.feature.fm.enable=true \
    vendor.audio.feature.hdmi_edid.enable=true \
    vendor.audio.feature.hdmi_passthrough.enable=true \
    vendor.audio.feature.hfp.enable=true \
    vendor.audio.feature.hifi_audio.enable=false \
    vendor.audio.feature.hwdep_cal.enable=false \
    vendor.audio.feature.incall_music.enable=false \
    vendor.audio.feature.multi_voice_session.enable=true \
    vendor.audio.feature.keep_alive.enable=false \
    vendor.audio.feature.kpi_optimize.enable=true \
    vendor.audio.feature.maxx_audio.enable=false \
    vendor.audio.feature.ras.enable=true \
    vendor.audio.feature.record_play_concurency.enable=false \
    vendor.audio.feature.src_trkn.enable=true \
    vendor.audio.feature.spkr_prot.enable=true \
    vendor.audio.feature.ssrec.enable=false \
    vendor.audio.feature.usb_offload.enable=true \
    vendor.audio.feature.usb_offload_burst_mode.enable=false \
    vendor.audio.feature.usb_offload_sidetone_volume.enable=false \
    vendor.audio.feature.deepbuffer_as_primary.enable=false \
    vendor.audio.feature.vbat.enable=true \
    vendor.audio.feature.wsa.enable=false \
    vendor.audio.feature.audiozoom.enable=false \
    vendor.audio.feature.snd_mon.enable=false

#enable AAC frame ctl for A2DP sinks
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.bt.aac_frm_ctl.enabled=true

# Codec2 switch
PRODUCT_PROPERTY_OVERRIDES += \
    debug.media.codec2=2

# Chipset
PRODUCT_PROPERTY_OVERRIDES += \
    ro.soc.manufacturer=Qualcomm \
    ro.soc.model=SDM660

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0

# Rendering
PRODUCT_PROPERTY_OVERRIDES += \
    debug.enable.sglscale=1 \
    debug.egl.hw=1 \
    debug.sf.disable_hwc=0 \
    debug.sf.recomputecrop=0 \
    persist.hwc.ptor.enable=true \
    debug.sf.gpu_comp_tiling=1 \
    vendor.display.disable_partial_split=1 \
    debug.hwui.use_buffer_age=false \
    vendor.display.perf_hint_window=50

#Set speaker protection cal tx path sampling rate to 48k
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.spkr_prot.tx.sampling_rate=48000

#Set AudioFlinger client heap size
PRODUCT_PROPERTY_OVERRIDES += \
    ro.af.client_heap_size_kbyte=7168

PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio_hal.in_period_size=144 \
    vendor.audio_hal.period_multiplier=2 \
    vendor.audio.adm.buffering.ms=3

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio.hw.binder.size_kbyte=1024

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sdk.sensors.gestures=false \
    ro.vendor.sensors.cmc=false \
    ro.vendor.sensors.dev_ori=false \
    ro.vendor.sensors.facing=false \
    ro.vendor.sensors.mot_detect=true \
    ro.vendor.sensors.pmd=true \
    ro.vendor.sensors.sta_detect=true

# SurfaceFlinger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.max_virtual_display_dimension=4096 \
    ro.surface_flinger.protected_contents=true \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.early_phase_offset_ns=500000 \
    debug.sf.early_app_phase_offset_ns=500000 \
    debug.sf.early_gl_phase_offset_ns=3000000 \
    debug.sf.early_gl_app_phase_offset_ns=15000000

# Enable backpressure for GL comp
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.enable_gl_backpressure=1

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.ims_volte_enable=1 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.radio.aosp_usr_pref_sel=true \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.radio.multisim.config=dsds \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.data_ltd_sys_ind=1 \
    persist.vendor.radio.procedure_bytes=SKIP \
    persist.radio.calls.on.ims=1 \
    persist.dbg.wfc_avail_ovr=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.use_old_mnc_mcc_format=true \
    ro.telephony.iwlan_operation_mode=legacy \
    persist.vendor.data.iwlan.enable=true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    vendor.bluetooth.soc=cherokee

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
    ro.charger.disable_init_blank=true \
    ro.charger.enable_suspend=true
