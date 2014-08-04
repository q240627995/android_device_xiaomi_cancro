$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/xiaomi/cancro/cancro-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/xiaomi/cancro/overlay

LOCAL_PATH := device/xiaomi/cancro

# Charger
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/ramdisk/chargeonlymode:root/sbin/chargeonlymode

#Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/mount_ext4_default.sh:recovery/root/res/dualboot/mount_ext4_default.sh \
    $(LOCAL_PATH)/recovery/mount_ext4_tdb.sh:recovery/root/res/dualboot/mount_ext4_tdb.sh

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/ramdisk/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/rootdir/ramdisk/init.class_main.sh:root/init.class_main.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.mdm.sh:root/init.mdm.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.factory.sh:root/init.qcom.factory.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/rootdir/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/rootdir/ramdisk/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/mount_ext4.sh:system/mount_ext4.sh

PRODUCT_PACKAGES += \
    dualboot_init

PRODUCT_PACKAGES += \
    pronto_wlan.ko

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/rootdir/audio/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    $(LOCAL_PATH)/rootdir/audio/listen_platform_info.xml:system/etc/listen_platform_info.xml \
    $(LOCAL_PATH)/rootdir/audio/mixer_paths_3_1.xml:system/etc/mixer_paths_3_1.xml \
    $(LOCAL_PATH)/rootdir/audio/mixer_paths_3_1_forte.xml:system/etc/mixer_paths_3_1_forte.xml \
    $(LOCAL_PATH)/rootdir/audio/mixer_paths_3_2.xml:system/etc/mixer_paths_3_2.xml \
    $(LOCAL_PATH)/rootdir/audio/mixer_paths_3_2_forte.xml:system/etc/mixer_paths_3_2_forte.xml \
    $(LOCAL_PATH)/rootdir/audio/mixer_paths_4_x.xml:system/etc/mixer_paths_4_x.xml \
    $(LOCAL_PATH)/rootdir/audio/mixer_paths_4_x_forte.xml:system/etc/mixer_paths_4_x_forte.xml \
    $(LOCAL_PATH)/rootdir/audio/mixer_paths_5_x.xml:system/etc/mixer_paths_5_x.xml \
    $(LOCAL_PATH)/rootdir/audio/mixer_paths_5_x_forte.xml:system/etc/mixer_paths_5_x_forte.xml \
    $(LOCAL_PATH)/rootdir/audio/mixer_paths_auxpcm_3_1.xml:system/etc/mixer_paths_auxpcm_3_1.xml \
    $(LOCAL_PATH)/rootdir/audio/mixer_paths_auxpcm_3_2.xml:system/etc/mixer_paths_auxpcm_3_2.xml \
    $(LOCAL_PATH)/rootdir/audio/mixer_paths_auxpcm_4_x.xml:system/etc/mixer_paths_auxpcm_4_x.xml \
    $(LOCAL_PATH)/rootdir/audio/mixer_paths_auxpcm_5_x.xml:system/etc/mixer_paths_auxpcm_5_x.xml \
    $(LOCAL_PATH)/rootdir/audio/acdbdata/MTP/X3/MTP_X3_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/X3/MTP_X3_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/rootdir/audio/acdbdata/MTP/X3/MTP_X3_General_cal.acdb:system/etc/acdbdata/MTP/X3/MTP_X3_General_cal.acdb \
    $(LOCAL_PATH)/rootdir/audio/acdbdata/MTP/X3/MTP_X3_Global_cal.acdb:system/etc/acdbdata/MTP/X3/MTP_X3_Global_cal.acdb \
    $(LOCAL_PATH)/rootdir/audio/acdbdata/MTP/X3/MTP_X3_Handset_cal.acdb:system/etc/acdbdata/MTP/X3/MTP_X3_Handset_cal.acdb \
    $(LOCAL_PATH)/rootdir/audio/acdbdata/MTP/X3/MTP_X3_Hdmi_cal.acdb:system/etc/acdbdata/MTP/X3/MTP_X3_Hdmi_cal.acdb \
    $(LOCAL_PATH)/rootdir/audio/acdbdata/MTP/X3/MTP_X3_Headset_cal.acdb:system/etc/acdbdata/MTP/X3/MTP_X3_Headset_cal.acdb \
    $(LOCAL_PATH)/rootdir/audio/acdbdata/MTP/X3/MTP_X3_Speaker_cal.acdb:system/etc/acdbdata/MTP/X3/MTP_X3_Speaker_cal.acdb \
    $(LOCAL_PATH)/rootdir/audio/acdbdata/MTP/X4/MTP_X4_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/X4/MTP_X4_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/rootdir/audio/acdbdata/MTP/X4/MTP_X4_General_cal.acdb:system/etc/acdbdata/MTP/X4/MTP_X4_General_cal.acdb \
    $(LOCAL_PATH)/rootdir/audio/acdbdata/MTP/X4/MTP_X4_Global_cal.acdb:system/etc/acdbdata/MTP/X4/MTP_X4_Global_cal.acdb \
    $(LOCAL_PATH)/rootdir/audio/acdbdata/MTP/X4/MTP_X4_Handset_cal.acdb:system/etc/acdbdata/MTP/X4/MTP_X4_Handset_cal.acdb \
    $(LOCAL_PATH)/rootdir/audio/acdbdata/MTP/X4/MTP_X4_Hdmi_cal.acdb:system/etc/acdbdata/MTP/X4/MTP_X4_Hdmi_cal.acdb \
    $(LOCAL_PATH)/rootdir/audio/acdbdata/MTP/X4/MTP_X4_Headset_cal.acdb:system/etc/acdbdata/MTP/X4/MTP_X4_Headset_cal.acdb \
    $(LOCAL_PATH)/rootdir/audio/acdbdata/MTP/X4/MTP_X4_Speaker_cal.acdb:system/etc/acdbdata/MTP/X4/MTP_X4_Speaker_cal.acdb

# GPS
PRODUCT_PACKAGES += \
    gps.msm8974

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/quipc.conf:system/etc/quipc.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/rootdir/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/rootdir/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

PRODUCT_PACKAGES += \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf \
    hostapd_default.conf \
    hostapd.accept \
    hostapd.deny

PRODUCT_PACKAGES += \
    wcnss_service

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/keylayout/atmel-maxtouch.kl:system/usr/keylayout/atmel-maxtouch.kl \
    $(LOCAL_PATH)/rootdir/keylayout/cyttsp_button.kl:system/usr/keylayout/cyttsp_button.kl \
    $(LOCAL_PATH)/rootdir/keylayout/fts.kl:system/usr/keylayout/fts.kl \
    $(LOCAL_PATH)/rootdir/keylayout/msm8974-taiko-mtp-snd-card_Button_Jack.kl:system/usr/keylayout/msm8974-taiko-mtp-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/rootdir/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/rootdir/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl

# IPC router config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Media profile
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfcee_access.xml:system/etc/nfcee_access.xml \
    $(LOCAL_PATH)/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/libnfc-brcm-20791b05.conf:system/etc/libnfc-brcm-20791b05.conf

# Thermal config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermald-8974.conf:system/etc/thermald-8974.conf \
    $(LOCAL_PATH)/configs/thermal-engine-8974.conf:system/etc/thermal-engine-8974.conf \
    $(LOCAL_PATH)/configs/thermal-engine-perf.conf:system/etc/thermal-engine-perf.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/android_model_facea.dat:system/etc/android_model_facea.dat \
    $(LOCAL_PATH)/rootdir/etc/android_model_faceg.dat:system/etc/android_model_faceg.dat \
    $(LOCAL_PATH)/rootdir/etc/hcidump.sh:system/etc/hcidump.sh \
    $(LOCAL_PATH)/rootdir/etc/hsic.control.bt.sh:system/etc/hsic.control.bt.sh \
    $(LOCAL_PATH)/rootdir/etc/init.crda.sh:system/etc/init.crda.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    $(LOCAL_PATH)/rootdir/etc/qca6234-service.sh:system/etc/qca6234-service.sh \
    $(LOCAL_PATH)/rootdir/etc/sdm_200_HOG3x3_Grid3x3_bin5_noproj_zero_reduced.bin:system/etc/sdm_200_HOG3x3_Grid3x3_bin5_noproj_zero_reduced.bin \
    $(LOCAL_PATH)/rootdir/etc/sdm_200_HOG3x3_Grid3x3_bin5_noproj_zero_reduced.bin.pca:system/etc/sdm_200_HOG3x3_Grid3x3_bin5_noproj_zero_reduced.bin.pca \
    $(LOCAL_PATH)/rootdir/etc/usf_post_boot.sh:system/etc/usf_post_boot.sh \
    $(LOCAL_PATH)/rootdir/etc/xtwifi.conf:system/etc/xtwifi.conf \
    $(LOCAL_PATH)/rootdir/etc/modem/Diag.cfg:system/etc/modem/Diag.cfg

$(call inherit-product, build/target/product/full.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# call the proprietary setup
$(call inherit-product-if-exists, vendor/xiaomi/cancro/cancro-vendor.mk)

