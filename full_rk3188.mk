$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/rockchip/rk3188/rk3188-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/rockchip/rk3188/overlay

LOCAL_PATH := device/rockchip/rk3188
LOCAL_KERNEL := device/rockchip/rk3188/prebuilt/kernel/kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# system files
PRODUCT_COPY_FILES += \
        device/rockchip/rk3188/init.rc:root/init.rc \
	device/rockchip/rk3188/init.rk3188.rc:root/init.rk3188.rc \
	device/rockchip/rk3188/init.rk3188.usb.rc:root/init.rk3188.usb.rc \
	device/rockchip/rk3188/init.recovery.rk3188.rc:root/init.recovery.rk3188.rc \
	device/rockchip/rk3188/ueventd.rk3188.rc:root/ueventd.rk3188.rc \
	device/rockchip/rk3188/rk29-ipp.ko:root/rk29-ipp.ko \
	device/rockchip/rk3188/rk30xxnand_ko.ko:root/rk30xxnand_ko.ko \
	device/rockchip/rk3188/ueventd.rc:root/ueventd.rc \
	device/rockchip/rk3188/ueventd.goldfish.rc:root/ueventd.goldfish.rc

# copy prebuilt bins
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk3188/prebuilt/bin,system/bin)

# copy prebuilt etcs
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk3188/prebuilt/etc,system/etc)

# copy prebuilt hw libs
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk3188/prebuilt/lib/hw,system/lib/hw)

# copy prebuilt egl libs
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk3188/prebuilt/lib/egl,system/lib/egl)

# copy every prebuilt libs
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk3188/prebuilt/lib,system/lib)

# copy prebuilt modules
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk3188/prebuilt/kernel/modules,system/lib/modules)

# copy vendor firmware
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk3188/prebuilt/etc/firmware,system/etc/firmware)

# copy keylayouts
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk3188/prebuilt/usr/keylayout,system/usr/keylayout)

# copy rktools
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk3188/rktools,rktools)

# copy the builder
PRODUCT_COPY_FILES += \
	device/rockchip/rk3188/custom_boot.sh:custom_boot.sh

# hardware-specific feature permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# build.prop
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.timezone=America/New_York \
	persist.sys.language=en \
	persist.sys.country=US \
	ro.sf.lcd_density=160 \
	ro.kernel.android.checkjni=1 \
	persist.sys.ui.hw=true \
	opengl.vivante.texture=1 \
	ro.opengles.version=131072 \
	hwui.render_dirty_regions=false \
	qemu.hw.mainkeys=0 \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15 \
	ro.kernel.checkjni=0 \
	ro.sf.lcdc_composer=0 \
	keyguard.no_require_sim=true \
	dalvik.vm.jniopts=warnonly \
	ro.rksdk.version=2013-08.4.2.2.tungsten.1.0 \
	sys.hwc.compose_policy=6 \
	sys.ffmpeg_sf.switch=0 \
	sys.dts_ac3.shield=0 \
	sf.power.control=2073600 \
	ro.rk.systembar.voiceicon=false \
	ro.rk.screenoff_time=-1 \
	rk.rk.install_non_market_apps=true \
        ro.factory.tool=0 \
	ro.product.usbfactory=rockchip_usb \
	ro.kernel.android.checkjni=0 \
	ro.rk.bt_enable=true \
	ro.factory.storage_polcy=0 \
	testing.mediascanner.skiplist=/mnt/sdcard/Android/ \
	ro.vendor.sw.version=RK3188_ANDROID.4.2.2_Tungsten.1.0 \
	ro.product.version=1.0.0 \
	net.bt.name=Android \
	dalvik.vm.dexopt-flags=m=y \
	dalvik.vm.stack-trace-file=/data/anr/traces.txt \
	media.stagefright.enable-player=true \
	media.stagefright.enable-meta=true \
	media.stagefright.enable-scan=false \
	media.stagefright.enable-http=true \
	net.dns1=8.8.8.8 \
	net.dns2=8.8.4.4 \
	video.accelerate.hw=1 \
	debug.sf.hw=1 \
	debug.egl.profiler=1 \
	debug.egl.hw=1 \
	debug.composition.type=gpu \
	ro.media.dec.jpeg.memcap=8000000 \
	ro.media.enc.hprof.vid.bps=8000000 \
	ro.media.capture.maxres=8m \
	ro.media.panorama.defres=3264x1840 \
	ro.media.panorama.frameres=1280x720 \
	ro.camcorder.videoModes=true \
	ro.media.enc.hprof.vid.fps=65
	ro.media.enc.jpeg.quality=100 \
        persist.sys.use_dithering=0

# Camera
PRODUCT_PACKAGES += \
	Camera \
	camera.rk30board \
	camera.goldfish

# Audio
PRODUCT_PACKAGES += \
	audio.primary.default \
	audio.primary.rk30board \
	audio_policy.default \
	audo_policy.rk30board \
	alsa.default \
	acoustics.default \
	audio.r_submix.default \
	tinyplay \
	tinycap \
	tinymix \
	audio.a2dp.default \
	audio.usb.default \
	libtinyalsa \
	libaudioutils

PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory

# filesystem tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs \
	static_busybox \
	utility_make_ext4fs \
	libstagefrighthw

# dalvik fix
PRODUCT_PROPERY_OVERRIDES += \
	dalvik.vm.dexopt-data-only=1

# usb stuff
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	service.adb.root=1 \
	ro.secure=1 \
	ro.allow.mock.location=1 \
	ro.debuggable=1 \
	ro.cwm.forbid_format=/misc,/kernel,/recovery
	
$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)
#$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_rk3188
PRODUCT_DEVICE := rk3188
