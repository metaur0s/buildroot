################################################################################
#
# nvidia-driver
#
################################################################################

# NVIDIA drivers now are bundled 64-bit and 32-bit together in one .run file.
NVIDIA_DRIVER_VERSION = 565.77
NVIDIA_DRIVER_SITE = http://download.nvidia.com/XFree86/Linux-x86_64/$(NVIDIA_DRIVER_VERSION)
NVIDIA_DRIVER_SOURCE = NVIDIA-Linux-x86_64-$(NVIDIA_DRIVER_VERSION).run
NVIDIA_DRIVER_LICENSE = NVIDIA Software License
NVIDIA_DRIVER_LICENSE_FILES = LICENSE
NVIDIA_DRIVER_REDISTRIBUTE = NO
NVIDIA_DRIVER_INSTALL_STAGING = YES

ifeq ($(BR2_PACKAGE_NVIDIA_DRIVER_XORG),y)

# Since nvidia-driver are binary blobs, the below dependencies are not
# strictly speaking build dependencies of nvidia-driver. However, they
# are build dependencies of packages that depend on nvidia-driver, so
# they should be built prior to those packages, and the only simple
# way to do so is to make nvidia-driver depend on them.
NVIDIA_DRIVER_DEPENDENCIES += mesa3d-headers xlib_libX11 xlib_libXext
NVIDIA_DRIVER_PROVIDES += libgl libegl libgles

NVIDIA_DRIVER_LIBS_GL = \
	libGLX.so.0 \
	libglxserver_nvidia.so.$(NVIDIA_DRIVER_VERSION) \
	libGL.so.1.7.0 \
	libGLX_nvidia.so.$(NVIDIA_DRIVER_VERSION)

NVIDIA_DRIVER_LIBS_EGL = \
	libEGL.so.1.1.0 \
	libEGL.so.$(NVIDIA_DRIVER_VERSION) \
	libGLdispatch.so.0 \
	libEGL_nvidia.so.$(NVIDIA_DRIVER_VERSION)

NVIDIA_DRIVER_LIBS_GLES = \
	libGLESv1_CM.so.1.2.0 \
	libGLESv2.so.2.1.0 \
	libGLESv1_CM_nvidia.so.$(NVIDIA_DRIVER_VERSION) \
	libGLESv2_nvidia.so.$(NVIDIA_DRIVER_VERSION)

NVIDIA_DRIVER_LIBS_MISC = \
	libnvidia-allocator.so.$(NVIDIA_DRIVER_VERSION) \
	libnvidia-api.so.$(NVIDIA_DRIVER_VERSION) \
	libnvidia-cfg.so.$(NVIDIA_DRIVER_VERSION) \
	libnvidia-eglcore.so.$(NVIDIA_DRIVER_VERSION) \
	libnvidia-egl-gbm.so.1.1.1 \
	libnvidia-egl-wayland.so.1.1.13 \
	libnvidia-wayland-client.so.$(NVIDIA_DRIVER_VERSION) \
	libnvidia-glcore.so.$(NVIDIA_DRIVER_VERSION) \
	libnvidia-glsi.so.$(NVIDIA_DRIVER_VERSION) \
	libnvidia-glvkspirv.so.$(NVIDIA_DRIVER_VERSION) \
	libnvidia-ml.so.$(NVIDIA_DRIVER_VERSION) \
	libnvidia-rtcore.so.$(NVIDIA_DRIVER_VERSION)

NVIDIA_DRIVER_LIBS += \
	$(NVIDIA_DRIVER_LIBS_GL) \
	$(NVIDIA_DRIVER_LIBS_EGL) \
	$(NVIDIA_DRIVER_LIBS_GLES) \
	$(NVIDIA_DRIVER_LIBS_MISC)

# Install the gl.pc file
define NVIDIA_DRIVER_INSTALL_GL_DEV
	$(INSTALL) -D -m 0644 $(@D)/libGL.la $(STAGING_DIR)/usr/lib/libGL.la
	$(SED) 's:__GENERATED_BY__:Buildroot:' $(STAGING_DIR)/usr/lib/libGL.la
	$(SED) 's:__LIBGL_PATH__:/usr/lib:' $(STAGING_DIR)/usr/lib/libGL.la
	$(SED) 's:-L[^[:space:]]\+::' $(STAGING_DIR)/usr/lib/libGL.la
	$(INSTALL) -D -m 0644 package/nvidia-driver/gl.pc $(STAGING_DIR)/usr/lib/pkgconfig/gl.pc
	$(INSTALL) -D -m 0644 package/nvidia-driver/egl.pc $(STAGING_DIR)/usr/lib/pkgconfig/egl.pc
endef

# Those libraries are 'private' libraries requiring an agreement with
# NVidia to develop code for those libs. There seems to be no restriction
# on using those libraries (e.g. if the user has such an agreement, or
# wants to run a third-party program developed under such an agreement).
ifeq ($(BR2_PACKAGE_NVIDIA_DRIVER_PRIVATE_LIBS),y)
NVIDIA_DRIVER_LIBS += \
	libnvidia-fbc.so.$(NVIDIA_DRIVER_VERSION) /
	libnvidia-ifr.so.$(NVIDIA_DRIVER_VERSION) /
	libnvidia-ngx.so.$(NVIDIA_DRIVER_VERSION) /
	libnvidia-opticalflow.so.$(NVIDIA_DRIVER_VERSION) /
	libnvoptix.so.$(NVIDIA_DRIVER_VERSION)
endif

# Include GTK libraries (if required)
ifeq ($(BR2_PACKAGE_NVIDIA_DRIVER_GTK),y)
NVIDIA_DRIVER_LIBS += \
	libnvidia-gtk2.so.$(NVIDIA_DRIVER_VERSION) \
	libnvidia-gtk3.so.$(NVIDIA_DRIVER_VERSION)
endif

# We refer to the destination path; the origin file has no directory component
NVIDIA_DRIVER_LIBS += \
	nvidia_drv.so:xorg/modules/drivers/ \
	libnvidia-pkcs11.so.$(NVIDIA_DRIVER_VERSION) \
	libnvidia-pkcs11-openssl3.so.$(NVIDIA_DRIVER_VERSION) \
	libnvidia-tls.so.$(NVIDIA_DRIVER_VERSION) \
	libglx.so.$(NVIDIA_DRIVER_VERSION):xorg/modules/extensions/

# libglx needs a symlink according to the driver README. It has no SONAME
define NVIDIA_DRIVER_SYMLINK_LIBGLX
	ln -sf libglx.so.$(NVIDIA_DRIVER_VERSION) \
		$(TARGET_DIR)/usr/lib/xorg/modules/extensions/libglx.so
endef

endif # X drivers

ifeq ($(BR2_PACKAGE_NVIDIA_DRIVER_CUDA),y)
NVIDIA_DRIVER_LIBS += \
	libcuda.so.$(NVIDIA_DRIVER_VERSION) \
	libcudadebugger.so.$(NVIDIA_DRIVER_VERSION) \
	libnvcuvid.so.$(NVIDIA_DRIVER_VERSION) \
	libnvidia-encode.so.$(NVIDIA_DRIVER_VERSION) \
	libnvidia-gpucomp.so.$(NVIDIA_DRIVER_VERSION) \
	libnvidia-nvvm.so.$(NVIDIA_DRIVER_VERSION) \
	libnvidia-ptxjitcompiler.so.$(NVIDIA_DRIVER_VERSION) \
	libvdpau_nvidia.so.$(NVIDIA_DRIVER_VERSION)
ifeq ($(BR2_PACKAGE_NVIDIA_DRIVER_CUDA_PROGS),y)
NVIDIA_DRIVER_PROGS = nvidia-cuda-mps-control nvidia-cuda-mps-server
endif
endif

ifeq ($(BR2_PACKAGE_NVIDIA_DRIVER_OPENCL),y)
NVIDIA_DRIVER_LIBS += \
	libOpenCL.so.1.0.0 \
	libnvidia-opencl.so.$(NVIDIA_DRIVER_VERSION)
NVIDIA_DRIVER_DEPENDENCIES += mesa3d-headers
NVIDIA_DRIVER_PROVIDES += libopencl
endif

# Build and install the kernel modules if needed
ifeq ($(BR2_PACKAGE_NVIDIA_DRIVER_MODULE),y)

NVIDIA_DRIVER_MODULES = nvidia nvidia-modeset nvidia-drm
ifeq ($(BR2_x86_64),y)
NVIDIA_DRIVER_MODULES += nvidia-uvm
endif

# They can't do everything like everyone. They need those variables,
# because they don't recognise the usual variables set by the kernel
# build system. We also need to tell them what modules to build.
NVIDIA_DRIVER_MODULE_MAKE_OPTS = \
	IGNORE_CC_MISMATCH=1 \
	NV_KERNEL_SOURCES="$(LINUX_DIR)" \
	NV_KERNEL_OUTPUT="$(LINUX_DIR)" \
	NV_KERNEL_MODULES="$(NVIDIA_DRIVER_MODULES)" \
	NV_SPECTRE_V2=0

NVIDIA_DRIVER_MODULE_SUBDIRS = kernel

$(eval $(kernel-module))

endif # BR2_PACKAGE_NVIDIA_DRIVER_MODULE == y

# The downloaded archive is in fact an auto-extract script. So, it can run
# virtually everywhere, and it is fine enough to provide useful options.
# Except it can't extract into an existing (even empty) directory.
define NVIDIA_DRIVER_EXTRACT_CMDS
	$(SHELL) $(NVIDIA_DRIVER_DL_DIR)/$(NVIDIA_DRIVER_SOURCE) --extract-only \
		$(if $(BR2_x86_64),--no-install-compat32-libs) \
		--target $(@D)/tmp-extract
	chmod u+w -R $(@D)
	mv $(@D)/tmp-extract/* $(@D)/tmp-extract/.manifest $(@D)
	rm -rf $(@D)/tmp-extract
endef

# Helper to install libraries
# $1: library name
# $2: target directory
#
# For all libraries, we install them and create a symlink using
# their SONAME, so we can link to them at runtime; we also create
# the no-version symlink, so we can link to them at build time.
define NVIDIA_DRIVER_INSTALL_LIB
	$(INSTALL) -D -m 0644 $(@D)/$(1) $(2)$(notdir $(1))
	libsoname="$$( $(TARGET_READELF) -d "$(@D)/$(1)" \
		|sed -r -e '/.*\(SONAME\).*\[(.*)\]$$/!d; s//\1/;' )"; \
	if [ -n "$${libsoname}" -a "$${libsoname}" != "$(notdir $(1))" ]; then \
		ln -sf $(notdir $(1)) $(2)$${libsoname}; \
	fi
	baseso=$(firstword $(subst .,$(space),$(notdir $(1)))).so; \
	if [ -n "$${baseso}" -a "$${baseso}" != "$(notdir $(1))" ]; then \
		ln -sf $(notdir $(1)) $(2)$${baseso}; \
	fi
endef

# Helper to install libraries
# $1: destination directory (target or staging)
define NVIDIA_DRIVER_INSTALL_LIBS
	$(foreach lib,$(NVIDIA_DRIVER_LIBS),
		$(call NVIDIA_DRIVER_INSTALL_LIB,$(word 1,$(subst :, ,$(lib))), \
			$(1)/usr/lib/$(word 2,$(subst :, ,$(lib))))
	)
endef

# For staging, install libraries and development files
define NVIDIA_DRIVER_INSTALL_STAGING_CMDS
	$(call NVIDIA_DRIVER_INSTALL_LIBS,$(STAGING_DIR))
	$(NVIDIA_DRIVER_INSTALL_GL_DEV)
endef

# For target, install libraries and X.org modules
define NVIDIA_DRIVER_INSTALL_TARGET_CMDS
	$(call NVIDIA_DRIVER_INSTALL_LIBS,$(TARGET_DIR))
	$(foreach p,$(NVIDIA_DRIVER_PROGS), \
		$(INSTALL) -D -m 0755 $(@D)/$(p) \
			$(TARGET_DIR)/usr/bin/$(p)
	)
	$(NVIDIA_DRIVER_SYMLINK_LIBGLX)
	$(NVIDIA_DRIVER_INSTALL_KERNEL_MODULE)
endef

# Due to a conflict with xserver_xorg-server, this needs to be performed when
# finalizing the target filesystem to make sure this version is used.
NVIDIA_DRIVER_TARGET_FINALIZE_HOOKS += NVIDIA_DRIVER_SYMLINK_LIBGLX

$(eval $(generic-package))
