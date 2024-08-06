DEVICE_VARS += UBOOT_SIZE
DEVICE_VARS += CONFIG_SIZE
DEVICE_VARS += ART_SIZE NO_ART
DEVICE_VARS += MASTER_IMAGE_SIZE

define Build/append-tlt-uboot
	dd if="$(BIN_DIR)/u-boot_$(word 1,$(DEVICE_BOOT_NAME))$(word 1,$(1)).bin" >> $@
endef

define Build/append-tlt-config
	dd if=$(TOPDIR)/target/linux/ramips/image/bin/tlt-factory-config.bin >> $@
endef