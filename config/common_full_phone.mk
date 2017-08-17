# Inherit common AOSP stuff
$(call inherit-product, vendor/cos/config/common.mk)

$(call inherit-product, vendor/cos/config/telephony.mk)

$(call inherit-product, vendor/cos/config/cos_props.mk)
