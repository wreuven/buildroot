################################################################################
#
# misc-download-c910
#
################################################################################

MISC_DOWNLOAD_C910_VERSION = c2f9fba401cfd5d541d74899072f51899ef970d1
MISC_DOWNLOAD_C910_SOURCE = misc-download-c910-$(MISC_DOWNLOAD_C910_VERSION).tar.gz
MISC_DOWNLOAD_C910_SITE = $(call github,c-sky,910_misc_downloads,$(MISC_DOWNLOAD_C910_VERSION))

MISC_DOWNLOAD_C910_INSTALL_IMAGES = YES

define MISC_DOWNLOAD_C910_CONFIGURE_CMDS
endef

define MISC_DOWNLOAD_C910_BUILD_CMDS
endef

define MISC_DOWNLOAD_C910_INSTALL_IMAGES_CMDS
	mkdir -p $(BINARIES_DIR)/hw/
	cp $(@D)/* $(BINARIES_DIR)/hw/
endef

$(eval $(generic-package))