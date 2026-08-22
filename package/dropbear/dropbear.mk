################################################################################
#
# dropbear
#
################################################################################

DROPBEAR_VERSION = 2026.94
DROPBEAR_SITE = https://matt.ucc.asn.au/dropbear/releases
DROPBEAR_SOURCE = dropbear-$(DROPBEAR_VERSION).tar.bz2
DROPBEAR_LICENSE = MIT, BSD-2-Clause, Public domain
DROPBEAR_LICENSE_FILES = LICENSE
DROPBEAR_TARGET_BINS = dropbearkey dropbearconvert scp
DROPBEAR_PROGRAMS = dropbear $(DROPBEAR_TARGET_BINS)
DROPBEAR_CPE_ID_VENDOR = dropbear_ssh_project
DROPBEAR_CPE_ID_PRODUCT = dropbear_ssh

# Disable hardening flags added by dropbear configure.ac, and let
# Buildroot add them when the relevant options are enabled. This
# prevents dropbear from using SSP support when not available.
DROPBEAR_CONF_OPTS = --disable-harden

ifeq ($(BR2_PACKAGE_DROPBEAR_CLIENT),y)
# Build dbclient, and create a convenience symlink named ssh
DROPBEAR_PROGRAMS += dbclient
DROPBEAR_TARGET_BINS += dbclient ssh
endif

DROPBEAR_MAKE = \
	$(MAKE) MULTI=1 SCPPROGRESS=1 \
	PROGRAMS="$(DROPBEAR_PROGRAMS)"

# With BR2_SHARED_STATIC_LIBS=y the generic infrastructure adds a
# --enable-static flags causing dropbear to be built as a static
# binary. Adding a --disable-static reverts this
ifeq ($(BR2_SHARED_STATIC_LIBS),y)
DROPBEAR_CONF_OPTS += --disable-static
endif

ifeq ($(BR2_PACKAGE_LIBXCRYPT),y)
DROPBEAR_DEPENDENCIES += libxcrypt
endif

# echo '#define DROPBEAR_SVR_PASSWORD_AUTH 0'     >> $(@D)/localoptions.h
# echo '#define DROPBEAR_SVR_PAM_AUTH 1'          >> $(@D)/localoptions.h
# echo '#define DROPBEAR_SVR_PASSWORD_AUTH 0'     >> $(@D)/localoptions.h
# echo '#define DROPBEAR_3DES 1'                  >> $(@D)/localoptions.h
# echo '#define DROPBEAR_ENABLE_CBC_MODE 1'       >> $(@D)/localoptions.h
# echo '#define DROPBEAR_SHA1_96_HMAC 1'          >> $(@D)/localoptions.h
# echo '#define DROPBEAR_DH_GROUP1 1'             >> $(@D)/localoptions.h
# echo '#define DROPBEAR_DSS 1'                   >> $(@D)/localoptions.h
# echo '#define DROPBEAR_SHA1_HMAC 1'             >> $(@D)/localoptions.h
# echo '#define DROPBEAR_RSA_SHA1 1'              >> $(@D)/localoptions.h
# echo '#define DROPBEAR_DH_GROUP14_SHA1 1'       >> $(@D)/localoptions.h
# echo '#define DO_HOST_LOOKUP 1'                 >> $(@D)/localoptions.h
# echo '#define DROPBEAR_3DES 1'                  >> $(@D)/localoptions.h
# echo '#define DROPBEAR_ENABLE_CBC_MODE 1'       >> $(@D)/localoptions.h
# echo '#define DROPBEAR_SHA1_96_HMAC 1'          >> $(@D)/localoptions.h
# echo '#define DROPBEAR_DH_GROUP1 1'             >> $(@D)/localoptions.h
# echo '#define DROPBEAR_DSS 1'                   >> $(@D)/localoptions.h
# echo '#define DROPBEAR_SHA1_HMAC 1'             >> $(@D)/localoptions.h
# echo '#define DROPBEAR_RSA_SHA1 1'              >> $(@D)/localoptions.h
# echo '#define DROPBEAR_DH_GROUP14_SHA1 1'       >> $(@D)/localoptions.h
# echo '#define DO_HOST_LOOKUP 1'                 >> $(@D)/localoptions.h
# echo '#define DROPBEAR_SMALL_CODE 0'            >> $(@D)/localoptions.h
# echo '#define NON_INETD_MODE 0'                 >> $(@D)/localoptions.h
# echo '#define DEFAULT_PATH $(BR2_SYSTEM_DEFAULT_PATH)' >>$(@D)/localoptions.h

DROPBEAR_LICENSE += , Unlicense, WTFPL
DROPBEAR_LICENSE_FILES += libtommath/LICENSE libtomcrypt/LICENSE
DROPBEAR_DEPENDENCIES += zlib libtomcrypt

#DROPBEAR_CONF_OPTS += --enable-static
#DROPBEAR_CONF_OPTS += --disable-harden        Don't set hardened build flags  
#DROPBEAR_CONF_OPTS += --disable-largefile
#DROPBEAR_CONF_OPTS += --disable-openpty       Don't use openpty, use alternative method
#DROPBEAR_CONF_OPTS += --disable-shadow        Don't use shadow passwords (if available)
#DROPBEAR_CONF_OPTS += --enable-fuzz
#DROPBEAR_CONF_OPTS += --enable-bundled-libtom
#DROPBEAR_CONF_OPTS += --disable-bundled-libtom
DROPBEAR_CONF_OPTS += --disable-zlib
DROPBEAR_CONF_OPTS += --disable-pam
DROPBEAR_CONF_OPTS += --disable-syslog
DROPBEAR_CONF_OPTS += --disable-plugin-deprecated
DROPBEAR_CONF_OPTS += --disable-lastlog
DROPBEAR_CONF_OPTS += --disable-utmp --disable-utmpx
DROPBEAR_CONF_OPTS += --disable-wtmp --disable-wtmpx
DROPBEAR_CONF_OPTS += --disable-pututline    # Disable use of pututline() etc. ([uw]tmp) [no]
DROPBEAR_CONF_OPTS += --disable-pututxline   # Disable use of pututxline() etc. ([uw]tmpx) [no] 
#DROPBEAR_CONF_OPTS += --disable-loginfunc    # Disable use of login() etc. [no]

DROPBEAR_LOCALOPTIONS_FILE = $(call qstrip,$(BR2_PACKAGE_DROPBEAR_LOCALOPTIONS_FILE))
ifneq ($(DROPBEAR_LOCALOPTIONS_FILE),)
define DROPBEAR_APPEND_LOCALOPTIONS_FILE
	cat $(DROPBEAR_LOCALOPTIONS_FILE) >> $(@D)/localoptions.h
endef
DROPBEAR_POST_EXTRACT_HOOKS += DROPBEAR_APPEND_LOCALOPTIONS_FILE
endif

define DROPBEAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 $(@D)/dropbearmulti $(TARGET_DIR)/usr/sbin/dropbear
	for f in $(DROPBEAR_TARGET_BINS); do \
		ln -snf ../sbin/dropbear $(TARGET_DIR)/usr/bin/$$f ; \
	done
	ln -snf /var/run/dropbear $(TARGET_DIR)/etc/dropbear
endef

$(eval $(autotools-package))
