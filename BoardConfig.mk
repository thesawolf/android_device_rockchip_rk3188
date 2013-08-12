# inherit from the proprietary version
#-include vendor/rockchip/rk3188/BoardConfigVendor.mk

LOCAL_PATH := device/rockchip/rk3188

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := rk3188
TARGET_BOARD_HARDWARE := rk3188
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_ARMV7A := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=coretx-a9 -mfpu=neon -mfloat-abi=softfp 

TARGET_BOOTLOADER_BOARD_NAME := rk3188
BOARD_USE_LCDC_COMPOSER := false

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x00004000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x02000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x20000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x80000000
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_FLASH_BLOCK_SIZE := 131072

# build the kernel
# SAW - moving to prebuilt kernel to save time and config options
#TARGET_KERNEL_SOURCE := kernel/rockchip/rk3188
#TARGET_KERNEL_CONFIG := mk908-defconfig
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := prebuilts/gcc/linux-x86/arm/android-toolchain-eabi/bin/arm-linux-androideabi-
TARGET_PREBUILT_KERNEL := device/rockchip/rk3188/kernel/kernel
TARGET_EXTRA_CFLAGS += $(call cc-option,-mtune=cortex-a9,$(call cc-option,-mtune=cortex-a8)) $(call cc-option,-mcpu=cortex-a9,$(call cc-option,-mcpu=cortex-a8))

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_SDCARD_INTERNAL := true
TARGET_PROVIDES_INIT_RC := true
TARGET_USERIMAGES_USE_EXT4 := true

PRODUCT_CHARACTERISTICS := tablet

# Use a smaller subset of system fonts to keep image size lower
SMALLER_FONT_FOOTPRINT := true
#MINIMAL_FONT_FOOTPRINT := true

# some framework code requires this to enable BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/generic/common/bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/rockchip/rk3188/libs/bluetooth

# WIFI CHIP DEFINE
MT5931_WIFI_SUPPORT := false
MT6622_BT_SUPPORT   := false

# WLAN
BOARD_WPA_SUPPLICANT_DRIVER 	:= WEXT
WPA_SUPPLICANT_VERSION 		:= VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER		:= NL80211
BOARD_HOSTAPD_PRIVATE_LIB	:= lib_driver_cmd_bcmdhd	
BOARD_WLAN_DEVICE 		:= bcmdhd
WIFI_DRIVER_FW_PATH_PARAM	:= "/system/etc/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_P2P		:= "/system/etc/firmware/fw_bcm4329_p2p.bin"
WIFI_DRIVER_FW_PATH_AP		:= "/system/etc/firmware/fw_bcm4329_apsta.bin"
#WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/rkwifi.ko"
#WIFI_DRIVER_MODULE_NAME := "wlan"

# GRAPHICS
BOARD_EGL_CFG := device/rockchip/rk3188/prebuilt/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_USES_ION := true
TARGET_HAVE_HDMI_OUT := true

# AUDIO
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := true
BOARD_CODEC_ITV := true
BUILD_WITH_ALSA_UTILS := true

# CAMERA SUPPORT
USE_CAMERA_STUB := true

# MISC DISPLAY SETTINGS
BOARD_USE_SKIA_LCDTEXT := true
BOARD_HAVE_VPU := true

# WEBGL
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# MISC SETTINGS
BOARD_SENSOR_ST := true
BOARD_RADIO_DATAONLY := true
TARGET_BOOTLOADER_BOARD_NAME := rk3188
BOARD_BP_AUTO := true
BUILD_WITH_NOFLASH := false

# PHONE PAD CODEC LIST
BOARD_CODEC_WM8994 := false
BOARD_CODEC_RT5625_SPK_FROM_SPKOUT := false
BOARD_CODEC_RT5625_SPK_FROM_HPOUT := false 
BOARD_CODEC_RT3261 := false
BOARD_CODEC_RT3224 := false
BOARD_CODEC_RT5631 := false

# recovery
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/init.recovery.rk3188.rc
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := $(LOCAL_PATH)/recovery_keys.c
