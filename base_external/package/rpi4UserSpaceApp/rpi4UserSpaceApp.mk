
##############################################################
#
# rpi4userspaceapplication
#
##############################################################

RPI4USERSPACEAPP_VERSION = 4b70fd7994814054a15c9ca437e6eb65b20a12b7
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
RPI4USERSPACEAPP_SITE = git@github.com:Coreyboy1820/RPI-5-User-Space-Interrupt-Event-Counter.git
RPI4USERSPACEAPP_SITE_METHOD = git
RPI4USERSPACEAPP_GIT_SUBMODULES = YES

define RPI4USERSPACEAPP_BUILD_CMDS
	$(MAKE) -C $(@D) CC="$(TARGET_CC)" CFLAGS="$(TARGET_CFLAGS)" LDFLAGS="$(TARGET_LDFLAGS)"
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define RPI4USERSPACEAPP_INSTALL_TARGET_CMDS
	
	$(INSTALL) -m 0755 $(@D)/rpi4userspaceapp $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))