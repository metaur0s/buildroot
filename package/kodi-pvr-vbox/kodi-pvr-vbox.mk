################################################################################
#
# kodi-pvr-vbox
#
################################################################################

KODI_PVR_VBOX_VERSION = 21.1.5-Omega
KODI_PVR_VBOX_SITE = $(call github,kodi-pvr,pvr.vbox,$(KODI_PVR_VBOX_VERSION))
KODI_PVR_VBOX_LICENSE = GPL-2.0+
KODI_PVR_VBOX_LICENSE_FILES = LICENSE.md
KODI_PVR_VBOX_DEPENDENCIES = kodi tinyxml2

$(eval $(cmake-package))
