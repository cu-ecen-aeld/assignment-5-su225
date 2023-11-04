
##############################################################
#
# LDD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = 'f056e4fb0d99b24274a5ce7c9305040cef4e5a45'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-su225.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules

define LDD_BUILD_CMDS
	$(MAKE) modules
endef

define LDD_INSTALL_TARGET_CMDS
	$(MAKE) modules_install
endef

$(eval $(kernel-module))
$(eval $(generic-package))
