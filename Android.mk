LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wcd9320; \
    mkdir -p $(TARGET_OUT_ETC)/firmware/wlan; \
    ln -sf /data/misc/audio/wcd9320_anc.bin $(TARGET_OUT_ETC)/firmware/wcd9320/wcd9320_anc.bin; \
    ln -sf /data/misc/audio/wcd9320_mad_audio.bin $(TARGET_OUT_ETC)/firmware/wcd9320/wcd9320_mad_audio.bin; \
    ln -sf /data/misc/audio/mbhc.bin $(TARGET_OUT_ETC)/firmware/wcd9320/wcd9320_mbhc.bin; \
    ln -sf /data/etc/wlan_macaddr0 $(TARGET_OUT_ETC)/firmware/wlan/macaddr0; \
    ln -sf /data/etc/wlan_txpower_2_4g $(TARGET_OUT_ETC)/firmware/wlan/2_4g; \
    ln -sf /data/etc/wlan_txpower_5g_high $(TARGET_OUT_ETC)/firmware/wlan/5g_high; \
    ln -sf /data/etc/wlan_txpower_5g_mid $(TARGET_OUT_ETC)/firmware/wlan/5g_mid; \
    ln -sf /data/etc/wlan_txpower_5g_low $(TARGET_OUT_ETC)/firmware/wlan/5g_low)

