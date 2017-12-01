# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.soundtrigger@2.0-impl

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    camera.device@1.0-impl

PRODUCT_PROPERTY_OVERRIDES += \
    camera.disable_treble=true

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.renderscript@1.0-impl

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl

# Dumpstate
PRODUCT_PACKAGES += \
    android.hardware.dumpstate@1.0-service.sony

# FM Radio
PRODUCT_PACKAGES += \
    android.hardware.broadcastradio@1.0-impl

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl

# Light
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl

# Memory
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0-impl

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl

# Thermal HAL
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl

# Usb HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-service.sony

# Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

