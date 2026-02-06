
##############################################################
#
# RPI4 KERNEL DRIVER
#
##############################################################

RPI4KERNELDRIVER_VERSION = 63d3fcf979a8e4cd5ff2bf0a1842eabf3d49b514
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
RPI4KERNELDRIVER_SITE = git@github.com:Coreyboy1820/RPI-4-Linux-Kernel-hardware-driven-interrupt-driver.git
RPI4KERNELDRIVER_SITE_METHOD = git
RPI4KERNELDRIVER_GIT_SUBMODULES = YES

# RPI4KERNELDRIVER_SITE = /home/vboxuser/code/RPI-5-Linux-Kernel-hardware-driven-interrupt-driver
# RPI4KERNELDRIVER_SITE_METHOD = local

$(eval $(kernel-module))
$(eval $(generic-package))