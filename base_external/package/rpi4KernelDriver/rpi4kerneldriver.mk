
##############################################################
#
# RPI4 KERNEL DRIVER
#
##############################################################

RPI4KERNELDRIVER_VERSION = 712d1f06742b55ac00f4d363c30c769be2e6dd6c
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
RPI4KERNELDRIVER_SITE = git@github.com:Coreyboy1820/RPI-5-Linux-Kernel-hardware-driven-interrupt-driver.git
RPI4KERNELDRIVER_SITE_METHOD = git
RPI4KERNELDRIVER_GIT_SUBMODULES = YES

define RPI4KERNELDRIVER_BUILD_CMDS
	$(MAKE) -C $(@D) CC="$(TARGET_CC)" CFLAGS="$(TARGET_CFLAGS)" LDFLAGS="$(TARGET_LDFLAGS)"
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define RPI4KERNELDRIVER_INSTALL_TARGET_CMDS
	
	$(INSTALL) -m 0755 $(@D)/rpi4kerneldriver $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))