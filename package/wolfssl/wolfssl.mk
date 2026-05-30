################################################################################
#
# wolfssl
#
################################################################################

WOLFSSL_VERSION = 5.9.1
WOLFSSL_SITE = $(call github,wolfSSL,wolfssl,v$(WOLFSSL_VERSION)-stable)
WOLFSSL_INSTALL_STAGING = YES

WOLFSSL_LICENSE = GPL-3.0+
WOLFSSL_LICENSE_FILES = COPYING LICENSING
WOLFSSL_CPE_ID_VENDOR = wolfssl
WOLFSSL_CONFIG_SCRIPTS = wolfssl-config
# From git
WOLFSSL_AUTORECONF = YES
WOLFSSL_DEPENDENCIES = host-pkgconf

WOLFSSL_CONF_OPTS = \
	--disable-examples \
	--disable-crypttests \
	--disable-option-checking

ifeq ($(BR2_PACKAGE_WOLFSSL_EXPERIMENTAL),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DEBUG),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ERRORSTRINGS),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SINGLETHREADED),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DO178),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_FIPS),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_KEYLOG_EXPORT),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SIPHASH),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CMAC_KDF),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CMAC),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_HMAC),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_TRUNCATEDHMAC),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_FILESYSTEM),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ASM),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_BUMP),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_QUIC),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SCTP),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SRTP),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MCAST),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_BIND),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_LIBSSH2),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OPENSSH),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OPENVPN),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OPENRESTY),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_NGINX),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CHRONY),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OPENLDAP),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MOSQUITTO),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_LIGHTY),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_RSYSLOG),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_HAPROXY),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_WPAS),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_WPAS_DPP),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_NTP),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_FORTRESS),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_LIBWEBSOCKETS),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_NET_SNMP),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_KRB),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_FFMPEG),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_QT),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SNIFFER),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SIGNAL),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_STRONGSWAN),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_HITCH),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MEMCACHED),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OPENSSLCOEXIST),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SMIME),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_PSA),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SSH),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_TAILSCALE),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_WOLFGUARD),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_FALCON),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_WEBSERVER),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_WEBCLIENT),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CUDA),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_WOLFSSH),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_WOLFTPM),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_WOLFCLU),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_EXAMPLES),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CRYPTTESTS),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CRYPTTESTS_LIBS),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_TESTCERT),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_IOPOOL),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_IPV6),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_TITANCACHE),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_HUGECACHE),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_BIGCACHE),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SMALLCACHE),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SAVESESSION),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SAVECERT),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CERTGEN),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_HPKE),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_X963KDF),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SRTP_KDF),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_COMPKEY),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_BRAINPOOL),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CURVE448),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ED448),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ED448_STREAM),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CERT_WITH_EXTERN_PSK),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SSLV3),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SNI),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ALPN),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OLDTLS),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_TLSV10),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_TLSV12),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_TLS13),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DTLS13),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DTLS),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ATOMICUSER),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AES),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESGCM),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESGCM_STREAM),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESECB),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESCBC),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESCCM),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESEAX),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESSIV),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESCTR),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESOFB),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESCFB),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESXTS_STREAM),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESXTS),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESCTS),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESKEYWRAP),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESNI_WITH_AVX),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SM2),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SM3),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SM4_ECB),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SM4_CBC),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SM4_CTR),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SM4_GCM),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SM4_CCM),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ALIGNDATA),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AMDRDSEED),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AMDRAND),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AFALG),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_KCAPI),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DEVCRYPTO),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SHAKE128),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SHAKE256),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SHA),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SHA224),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SHA3),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SHA384),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SHA512),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SHA256),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_NULLCIPHER),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CAMELLIA),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MD2),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MD4),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MD5),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_RIPEMD),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_BLAKE2B),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_BLAKE2),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_BLAKE2S),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DES3),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ARC4),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_RC2),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CERTSERVICE),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_POLY1305),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CHACHA),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_XCHACHA),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OCSPSTAPLING),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OCSPSTAPLING2),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OCSP_RESPONDER),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OCSP),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MAXFRAGMENT),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_RENEGOTIATION_INDICATION),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SECURE_RENEGOTIATION),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SUPPORTEDCURVES),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SESSION_TICKET),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_EXTENDED_MASTER),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_EARLYDATA),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SCEP),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SRP),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_JNI),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ENCKEYS),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SCRYPT),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ASYNCCRYPT),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ASYNCCRYPT_SW),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ASYNCTHREADS),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SESSIONEXPORT),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MEMTEST),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SYS_CA_CERTS),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_RPK),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CERT_SETUP_CB),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_PKCS11),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_RSA),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_RSAPSS),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_HKDF),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DILITHIUM),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MLDSA),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_KYBER),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MLKEM),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_PQC_HYBRIDS),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_EXTRA_PQC_HYBRIDS),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SLHDSA),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ECH),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CURVE25519),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ED25519),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ED25519_STREAM),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DH),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_PKCS7),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_PKCS8),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_PKCS12),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_PSK),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DSA),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ECC),y)
WOLFSSL_CONF_OPTS +=  --enable-ecc
else
WOLFSSL_CONF_OPTS += --disable-ecc
endif

# enable ARMv8 hardware acceleration
ifeq ($(BR2_aarch64),y)
WOLFSSL_CONF_OPTS += --enable-armasm
# the flag -mstrict-align is needed to prevent build errors caused by
# some inline assembly in parts of the AES structure using the "m"
# constraint
WOLFSSL_CONF_ENV += CPPFLAGS="$(TARGET_CPPFLAGS) -mstrict-align"
else
WOLFSSL_CONF_OPTS += --disable-armasm
endif

ifeq ($(BR2_ARM_INSTRUCTIONS_THUMB),y)
WOLFSSL_CONF_OPTS += --with-arm-target=thumb
endif

$(eval $(autotools-package))
