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
    WOLFSSL_CONF_OPTS +=  --enable-experimental
else
    WOLFSSL_CONF_OPTS += --disable-experimental
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DEBUG),y)
    WOLFSSL_CONF_OPTS +=  --enable-debug
else
    WOLFSSL_CONF_OPTS += --disable-debug
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ERRORSTRINGS),y)
    WOLFSSL_CONF_OPTS +=  --enable-errorstrings
else
    WOLFSSL_CONF_OPTS += --disable-errorstrings
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SINGLETHREADED),y)
    WOLFSSL_CONF_OPTS +=  --enable-singlethreaded
else
    WOLFSSL_CONF_OPTS += --disable-singlethreaded
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DO178),y)
    WOLFSSL_CONF_OPTS +=  --enable-do178
else
    WOLFSSL_CONF_OPTS += --disable-do178
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_FIPS),y)
    WOLFSSL_CONF_OPTS +=  --enable-fips
else
    WOLFSSL_CONF_OPTS += --disable-fips
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_KEYLOG_EXPORT),y)
    WOLFSSL_CONF_OPTS +=  --enable-keylog-export
else
    WOLFSSL_CONF_OPTS += --disable-keylog-export
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SIPHASH),y)
    WOLFSSL_CONF_OPTS +=  --enable-siphash
else
    WOLFSSL_CONF_OPTS += --disable-siphash
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CMAC_KDF),y)
    WOLFSSL_CONF_OPTS +=  --enable-cmac-kdf
else
    WOLFSSL_CONF_OPTS += --disable-cmac-kdf
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CMAC),y)
    WOLFSSL_CONF_OPTS +=  --enable-cmac
else
    WOLFSSL_CONF_OPTS += --disable-cmac
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_HMAC),y)
    WOLFSSL_CONF_OPTS +=  --enable-hmac
else
    WOLFSSL_CONF_OPTS += --disable-hmac
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_TRUNCATEDHMAC),y)
    WOLFSSL_CONF_OPTS +=  --enable-truncatedhmac
else
    WOLFSSL_CONF_OPTS += --disable-truncatedhmac
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_FILESYSTEM),y)
    WOLFSSL_CONF_OPTS +=  --enable-filesystem
else
    WOLFSSL_CONF_OPTS += --disable-filesystem
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ASM),y)
    WOLFSSL_CONF_OPTS +=  --enable-asm
else
    WOLFSSL_CONF_OPTS += --disable-asm
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_BUMP),y)
    WOLFSSL_CONF_OPTS +=  --enable-bump
else
    WOLFSSL_CONF_OPTS += --disable-bump
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_QUIC),y)
    WOLFSSL_CONF_OPTS +=  --enable-quic
else
    WOLFSSL_CONF_OPTS += --disable-quic
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SCTP),y)
    WOLFSSL_CONF_OPTS +=  --enable-sctp
else
    WOLFSSL_CONF_OPTS += --disable-sctp
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SRTP),y)
    WOLFSSL_CONF_OPTS +=  --enable-srtp
else
    WOLFSSL_CONF_OPTS += --disable-srtp
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MCAST),y)
    WOLFSSL_CONF_OPTS +=  --enable-mcast
else
    WOLFSSL_CONF_OPTS += --disable-mcast
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_BIND),y)
    WOLFSSL_CONF_OPTS +=  --enable-bind
else
    WOLFSSL_CONF_OPTS += --disable-bind
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_LIBSSH2),y)
    WOLFSSL_CONF_OPTS +=  --enable-libssh2
else
    WOLFSSL_CONF_OPTS += --disable-libssh2
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OPENSSH),y)
    WOLFSSL_CONF_OPTS +=  --enable-openssh
else
    WOLFSSL_CONF_OPTS += --disable-openssh
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OPENVPN),y)
    WOLFSSL_CONF_OPTS +=  --enable-openvpn
else
    WOLFSSL_CONF_OPTS += --disable-openvpn
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OPENRESTY),y)
    WOLFSSL_CONF_OPTS +=  --enable-openresty
else
    WOLFSSL_CONF_OPTS += --disable-openresty
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_NGINX),y)
    WOLFSSL_CONF_OPTS +=  --enable-nginx
else
    WOLFSSL_CONF_OPTS += --disable-nginx
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CHRONY),y)
    WOLFSSL_CONF_OPTS +=  --enable-chrony
else
    WOLFSSL_CONF_OPTS += --disable-chrony
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OPENLDAP),y)
    WOLFSSL_CONF_OPTS +=  --enable-openldap
else
    WOLFSSL_CONF_OPTS += --disable-openldap
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MOSQUITTO),y)
    WOLFSSL_CONF_OPTS +=  --enable-mosquitto
else
    WOLFSSL_CONF_OPTS += --disable-mosquitto
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_LIGHTY),y)
    WOLFSSL_CONF_OPTS +=  --enable-lighty
else
    WOLFSSL_CONF_OPTS += --disable-lighty
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_RSYSLOG),y)
    WOLFSSL_CONF_OPTS +=  --enable-rsyslog
else
    WOLFSSL_CONF_OPTS += --disable-rsyslog
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_HAPROXY),y)
    WOLFSSL_CONF_OPTS +=  --enable-haproxy
else
    WOLFSSL_CONF_OPTS += --disable-haproxy
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_WPAS),y)
    WOLFSSL_CONF_OPTS +=  --enable-wpas
else
    WOLFSSL_CONF_OPTS += --disable-wpas
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_WPAS_DPP),y)
    WOLFSSL_CONF_OPTS +=  --enable-wpas-dpp
else
    WOLFSSL_CONF_OPTS += --disable-wpas-dpp
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_NTP),y)
    WOLFSSL_CONF_OPTS +=  --enable-ntp
else
    WOLFSSL_CONF_OPTS += --disable-ntp
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_FORTRESS),y)
    WOLFSSL_CONF_OPTS +=  --enable-fortress
else
    WOLFSSL_CONF_OPTS += --disable-fortress
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_LIBWEBSOCKETS),y)
    WOLFSSL_CONF_OPTS +=  --enable-libwebsockets
else
    WOLFSSL_CONF_OPTS += --disable-libwebsockets
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_NET_SNMP),y)
    WOLFSSL_CONF_OPTS +=  --enable-net-snmp
else
    WOLFSSL_CONF_OPTS += --disable-net-snmp
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_KRB),y)
    WOLFSSL_CONF_OPTS +=  --enable-krb
else
    WOLFSSL_CONF_OPTS += --disable-krb
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_FFMPEG),y)
    WOLFSSL_CONF_OPTS +=  --enable-ffmpeg
else
    WOLFSSL_CONF_OPTS += --disable-ffmpeg
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_QT),y)
    WOLFSSL_CONF_OPTS +=  --enable-qt
else
    WOLFSSL_CONF_OPTS += --disable-qt
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SNIFFER),y)
    WOLFSSL_CONF_OPTS +=  --enable-sniffer
else
    WOLFSSL_CONF_OPTS += --disable-sniffer
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SIGNAL),y)
    WOLFSSL_CONF_OPTS +=  --enable-signal
else
    WOLFSSL_CONF_OPTS += --disable-signal
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_STRONGSWAN),y)
    WOLFSSL_CONF_OPTS +=  --enable-strongswan
else
    WOLFSSL_CONF_OPTS += --disable-strongswan
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_HITCH),y)
    WOLFSSL_CONF_OPTS +=  --enable-hitch
else
    WOLFSSL_CONF_OPTS += --disable-hitch
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MEMCACHED),y)
    WOLFSSL_CONF_OPTS +=  --enable-memcached
else
    WOLFSSL_CONF_OPTS += --disable-memcached
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OPENSSLCOEXIST),y)
    WOLFSSL_CONF_OPTS +=  --enable-opensslcoexist
else
    WOLFSSL_CONF_OPTS += --disable-opensslcoexist
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SMIME),y)
    WOLFSSL_CONF_OPTS +=  --enable-smime
else
    WOLFSSL_CONF_OPTS += --disable-smime
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_PSA),y)
    WOLFSSL_CONF_OPTS +=  --enable-psa
else
    WOLFSSL_CONF_OPTS += --disable-psa
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SSH),y)
    WOLFSSL_CONF_OPTS +=  --enable-ssh
else
    WOLFSSL_CONF_OPTS += --disable-ssh
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_TAILSCALE),y)
    WOLFSSL_CONF_OPTS +=  --enable-tailscale
else
    WOLFSSL_CONF_OPTS += --disable-tailscale
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_WOLFGUARD),y)
    WOLFSSL_CONF_OPTS +=  --enable-wolfguard
else
    WOLFSSL_CONF_OPTS += --disable-wolfguard
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_FALCON),y)
    WOLFSSL_CONF_OPTS +=  --enable-falcon
else
    WOLFSSL_CONF_OPTS += --disable-falcon
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_WEBSERVER),y)
    WOLFSSL_CONF_OPTS +=  --enable-webserver
else
    WOLFSSL_CONF_OPTS += --disable-webserver
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_WEBCLIENT),y)
    WOLFSSL_CONF_OPTS +=  --enable-webclient
else
    WOLFSSL_CONF_OPTS += --disable-webclient
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CUDA),y)
    WOLFSSL_CONF_OPTS +=  --enable-cuda
else
    WOLFSSL_CONF_OPTS += --disable-cuda
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_WOLFSSH),y)
    WOLFSSL_CONF_OPTS +=  --enable-wolfssh
else
    WOLFSSL_CONF_OPTS += --disable-wolfssh
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_WOLFTPM),y)
    WOLFSSL_CONF_OPTS +=  --enable-wolftpm
else
    WOLFSSL_CONF_OPTS += --disable-wolftpm
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_WOLFCLU),y)
    WOLFSSL_CONF_OPTS +=  --enable-wolfclu
else
    WOLFSSL_CONF_OPTS += --disable-wolfclu
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_EXAMPLES),y)
    WOLFSSL_CONF_OPTS +=  --enable-examples
else
    WOLFSSL_CONF_OPTS += --disable-examples
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CRYPTTESTS),y)
    WOLFSSL_CONF_OPTS +=  --enable-crypttests
else
    WOLFSSL_CONF_OPTS += --disable-crypttests
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CRYPTTESTS_LIBS),y)
    WOLFSSL_CONF_OPTS +=  --enable-crypttests-libs
else
    WOLFSSL_CONF_OPTS += --disable-crypttests-libs
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_TESTCERT),y)
    WOLFSSL_CONF_OPTS +=  --enable-testcert
else
    WOLFSSL_CONF_OPTS += --disable-testcert
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_IOPOOL),y)
    WOLFSSL_CONF_OPTS +=  --enable-iopool
else
    WOLFSSL_CONF_OPTS += --disable-iopool
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_IPV6),y)
    WOLFSSL_CONF_OPTS +=  --enable-ipv6
else
    WOLFSSL_CONF_OPTS += --disable-ipv6
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_TITANCACHE),y)
    WOLFSSL_CONF_OPTS +=  --enable-titancache
else
    WOLFSSL_CONF_OPTS += --disable-titancache
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_HUGECACHE),y)
    WOLFSSL_CONF_OPTS +=  --enable-hugecache
else
    WOLFSSL_CONF_OPTS += --disable-hugecache
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_BIGCACHE),y)
    WOLFSSL_CONF_OPTS +=  --enable-bigcache
else
    WOLFSSL_CONF_OPTS += --disable-bigcache
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SMALLCACHE),y)
    WOLFSSL_CONF_OPTS +=  --enable-smallcache
else
    WOLFSSL_CONF_OPTS += --disable-smallcache
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SAVESESSION),y)
    WOLFSSL_CONF_OPTS +=  --enable-savesession
else
    WOLFSSL_CONF_OPTS += --disable-savesession
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SAVECERT),y)
    WOLFSSL_CONF_OPTS +=  --enable-savecert
else
    WOLFSSL_CONF_OPTS += --disable-savecert
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CERTGEN),y)
    WOLFSSL_CONF_OPTS +=  --enable-certgen
else
    WOLFSSL_CONF_OPTS += --disable-certgen
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_HPKE),y)
    WOLFSSL_CONF_OPTS +=  --enable-hpke
else
    WOLFSSL_CONF_OPTS += --disable-hpke
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_X963KDF),y)
    WOLFSSL_CONF_OPTS +=  --enable-x963kdf
else
    WOLFSSL_CONF_OPTS += --disable-x963kdf
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SRTP_KDF),y)
    WOLFSSL_CONF_OPTS +=  --enable-srtp-kdf
else
    WOLFSSL_CONF_OPTS += --disable-srtp-kdf
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_COMPKEY),y)
    WOLFSSL_CONF_OPTS +=  --enable-compkey
else
    WOLFSSL_CONF_OPTS += --disable-compkey
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_BRAINPOOL),y)
    WOLFSSL_CONF_OPTS +=  --enable-brainpool
else
    WOLFSSL_CONF_OPTS += --disable-brainpool
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CURVE448),y)
    WOLFSSL_CONF_OPTS +=  --enable-curve448
else
    WOLFSSL_CONF_OPTS += --disable-curve448
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ED448),y)
    WOLFSSL_CONF_OPTS +=  --enable-ed448
else
    WOLFSSL_CONF_OPTS += --disable-ed448
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ED448_STREAM),y)
    WOLFSSL_CONF_OPTS +=  --enable-ed448-stream
else
    WOLFSSL_CONF_OPTS += --disable-ed448-stream
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CERT_WITH_EXTERN_PSK),y)
    WOLFSSL_CONF_OPTS +=  --enable-cert-with-extern-psk
else
    WOLFSSL_CONF_OPTS += --disable-cert-with-extern-psk
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SSLV3),y)
    WOLFSSL_CONF_OPTS +=  --enable-sslv3
else
    WOLFSSL_CONF_OPTS += --disable-sslv3
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SNI),y)
    WOLFSSL_CONF_OPTS +=  --enable-sni
else
    WOLFSSL_CONF_OPTS += --disable-sni
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ALPN),y)
    WOLFSSL_CONF_OPTS +=  --enable-alpn
else
    WOLFSSL_CONF_OPTS += --disable-alpn
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OLDTLS),y)
    WOLFSSL_CONF_OPTS +=  --enable-oldtls
else
    WOLFSSL_CONF_OPTS += --disable-oldtls
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_TLSV10),y)
    WOLFSSL_CONF_OPTS +=  --enable-tlsv10
else
    WOLFSSL_CONF_OPTS += --disable-tlsv10
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_TLSV12),y)
    WOLFSSL_CONF_OPTS +=  --enable-tlsv12
else
    WOLFSSL_CONF_OPTS += --disable-tlsv12
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_TLS13),y)
    WOLFSSL_CONF_OPTS +=  --enable-tls13
else
    WOLFSSL_CONF_OPTS += --disable-tls13
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DTLS13),y)
    WOLFSSL_CONF_OPTS +=  --enable-dtls13
else
    WOLFSSL_CONF_OPTS += --disable-dtls13
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DTLS),y)
    WOLFSSL_CONF_OPTS +=  --enable-dtls
else
    WOLFSSL_CONF_OPTS += --disable-dtls
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ATOMICUSER),y)
    WOLFSSL_CONF_OPTS +=  --enable-atomicuser
else
    WOLFSSL_CONF_OPTS += --disable-atomicuser
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AES),y)
    WOLFSSL_CONF_OPTS +=  --enable-aes
else
    WOLFSSL_CONF_OPTS += --disable-aes
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESGCM),y)
    WOLFSSL_CONF_OPTS +=  --enable-aesgcm
else
    WOLFSSL_CONF_OPTS += --disable-aesgcm
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESGCM_STREAM),y)
    WOLFSSL_CONF_OPTS +=  --enable-aesgcm-stream
else
    WOLFSSL_CONF_OPTS += --disable-aesgcm-stream
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESECB),y)
    WOLFSSL_CONF_OPTS +=  --enable-aesecb
else
    WOLFSSL_CONF_OPTS += --disable-aesecb
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESCBC),y)
    WOLFSSL_CONF_OPTS +=  --enable-aescbc
else
    WOLFSSL_CONF_OPTS += --disable-aescbc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESCCM),y)
    WOLFSSL_CONF_OPTS +=  --enable-aesccm
else
    WOLFSSL_CONF_OPTS += --disable-aesccm
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESEAX),y)
    WOLFSSL_CONF_OPTS +=  --enable-aeseax
else
    WOLFSSL_CONF_OPTS += --disable-aeseax
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESSIV),y)
    WOLFSSL_CONF_OPTS +=  --enable-aessiv
else
    WOLFSSL_CONF_OPTS += --disable-aessiv
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESCTR),y)
    WOLFSSL_CONF_OPTS +=  --enable-aesctr
else
    WOLFSSL_CONF_OPTS += --disable-aesctr
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESOFB),y)
    WOLFSSL_CONF_OPTS +=  --enable-aesofb
else
    WOLFSSL_CONF_OPTS += --disable-aesofb
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESCFB),y)
    WOLFSSL_CONF_OPTS +=  --enable-aescfb
else
    WOLFSSL_CONF_OPTS += --disable-aescfb
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESXTS_STREAM),y)
    WOLFSSL_CONF_OPTS +=  --enable-aesxts-stream
else
    WOLFSSL_CONF_OPTS += --disable-aesxts-stream
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESXTS),y)
    WOLFSSL_CONF_OPTS +=  --enable-aesxts
else
    WOLFSSL_CONF_OPTS += --disable-aesxts
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESCTS),y)
    WOLFSSL_CONF_OPTS +=  --enable-aescts
else
    WOLFSSL_CONF_OPTS += --disable-aescts
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESKEYWRAP),y)
    WOLFSSL_CONF_OPTS +=  --enable-aeskeywrap
else
    WOLFSSL_CONF_OPTS += --disable-aeskeywrap
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AESNI_WITH_AVX),y)
    WOLFSSL_CONF_OPTS +=  --enable-aesni-with-avx
else
    WOLFSSL_CONF_OPTS += --disable-aesni-with-avx
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SM2),y)
    WOLFSSL_CONF_OPTS +=  --enable-sm2
else
    WOLFSSL_CONF_OPTS += --disable-sm2
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SM3),y)
    WOLFSSL_CONF_OPTS +=  --enable-sm3
else
    WOLFSSL_CONF_OPTS += --disable-sm3
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SM4_ECB),y)
    WOLFSSL_CONF_OPTS +=  --enable-sm4-ecb
else
    WOLFSSL_CONF_OPTS += --disable-sm4-ecb
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SM4_CBC),y)
    WOLFSSL_CONF_OPTS +=  --enable-sm4-cbc
else
    WOLFSSL_CONF_OPTS += --disable-sm4-cbc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SM4_CTR),y)
    WOLFSSL_CONF_OPTS +=  --enable-sm4-ctr
else
    WOLFSSL_CONF_OPTS += --disable-sm4-ctr
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SM4_GCM),y)
    WOLFSSL_CONF_OPTS +=  --enable-sm4-gcm
else
    WOLFSSL_CONF_OPTS += --disable-sm4-gcm
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SM4_CCM),y)
    WOLFSSL_CONF_OPTS +=  --enable-sm4-ccm
else
    WOLFSSL_CONF_OPTS += --disable-sm4-ccm
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ALIGNDATA),y)
    WOLFSSL_CONF_OPTS +=  --enable-aligndata
else
    WOLFSSL_CONF_OPTS += --disable-aligndata
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AMDRDSEED),y)
    WOLFSSL_CONF_OPTS +=  --enable-amdrdseed
else
    WOLFSSL_CONF_OPTS += --disable-amdrdseed
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AMDRAND),y)
    WOLFSSL_CONF_OPTS +=  --enable-amdrand
else
    WOLFSSL_CONF_OPTS += --disable-amdrand
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_AFALG),y)
    WOLFSSL_CONF_OPTS +=  --enable-afalg
else
    WOLFSSL_CONF_OPTS += --disable-afalg
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_KCAPI),y)
    WOLFSSL_CONF_OPTS +=  --enable-kcapi
else
    WOLFSSL_CONF_OPTS += --disable-kcapi
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DEVCRYPTO),y)
    WOLFSSL_CONF_OPTS +=  --enable-devcrypto
else
    WOLFSSL_CONF_OPTS += --disable-devcrypto
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SHAKE128),y)
    WOLFSSL_CONF_OPTS +=  --enable-shake128
else
    WOLFSSL_CONF_OPTS += --disable-shake128
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SHAKE256),y)
    WOLFSSL_CONF_OPTS +=  --enable-shake256
else
    WOLFSSL_CONF_OPTS += --disable-shake256
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SHA),y)
    WOLFSSL_CONF_OPTS +=  --enable-sha
else
    WOLFSSL_CONF_OPTS += --disable-sha
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SHA224),y)
    WOLFSSL_CONF_OPTS +=  --enable-sha224
else
    WOLFSSL_CONF_OPTS += --disable-sha224
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SHA3),y)
    WOLFSSL_CONF_OPTS +=  --enable-sha3
else
    WOLFSSL_CONF_OPTS += --disable-sha3
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SHA384),y)
    WOLFSSL_CONF_OPTS +=  --enable-sha384
else
    WOLFSSL_CONF_OPTS += --disable-sha384
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SHA512),y)
    WOLFSSL_CONF_OPTS +=  --enable-sha512
else
    WOLFSSL_CONF_OPTS += --disable-sha512
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SHA256),y)
    WOLFSSL_CONF_OPTS +=  --enable-sha256
else
    WOLFSSL_CONF_OPTS += --disable-sha256
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_NULLCIPHER),y)
    WOLFSSL_CONF_OPTS +=  --enable-nullcipher
else
    WOLFSSL_CONF_OPTS += --disable-nullcipher
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CAMELLIA),y)
    WOLFSSL_CONF_OPTS +=  --enable-camellia
else
    WOLFSSL_CONF_OPTS += --disable-camellia
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MD2),y)
    WOLFSSL_CONF_OPTS +=  --enable-md2
else
    WOLFSSL_CONF_OPTS += --disable-md2
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MD4),y)
    WOLFSSL_CONF_OPTS +=  --enable-md4
else
    WOLFSSL_CONF_OPTS += --disable-md4
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MD5),y)
    WOLFSSL_CONF_OPTS +=  --enable-md5
else
    WOLFSSL_CONF_OPTS += --disable-md5
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_RIPEMD),y)
    WOLFSSL_CONF_OPTS +=  --enable-ripemd
else
    WOLFSSL_CONF_OPTS += --disable-ripemd
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_BLAKE2B),y)
    WOLFSSL_CONF_OPTS +=  --enable-blake2b
else
    WOLFSSL_CONF_OPTS += --disable-blake2b
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_BLAKE2),y)
    WOLFSSL_CONF_OPTS +=  --enable-blake2
else
    WOLFSSL_CONF_OPTS += --disable-blake2
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_BLAKE2S),y)
    WOLFSSL_CONF_OPTS +=  --enable-blake2s
else
    WOLFSSL_CONF_OPTS += --disable-blake2s
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DES3),y)
    WOLFSSL_CONF_OPTS +=  --enable-des3
else
    WOLFSSL_CONF_OPTS += --disable-des3
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ARC4),y)
    WOLFSSL_CONF_OPTS +=  --enable-arc4
else
    WOLFSSL_CONF_OPTS += --disable-arc4
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_RC2),y)
    WOLFSSL_CONF_OPTS +=  --enable-rc2
else
    WOLFSSL_CONF_OPTS += --disable-rc2
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CERTSERVICE),y)
    WOLFSSL_CONF_OPTS +=  --enable-certservice
else
    WOLFSSL_CONF_OPTS += --disable-certservice
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_POLY1305),y)
    WOLFSSL_CONF_OPTS +=  --enable-poly1305
else
    WOLFSSL_CONF_OPTS += --disable-poly1305
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CHACHA),y)
    WOLFSSL_CONF_OPTS +=  --enable-chacha
else
    WOLFSSL_CONF_OPTS += --disable-chacha
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_XCHACHA),y)
    WOLFSSL_CONF_OPTS +=  --enable-xchacha
else
    WOLFSSL_CONF_OPTS += --disable-xchacha
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OCSPSTAPLING),y)
    WOLFSSL_CONF_OPTS +=  --enable-ocspstapling
else
    WOLFSSL_CONF_OPTS += --disable-ocspstapling
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OCSPSTAPLING2),y)
    WOLFSSL_CONF_OPTS +=  --enable-ocspstapling2
else
    WOLFSSL_CONF_OPTS += --disable-ocspstapling2
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OCSP_RESPONDER),y)
    WOLFSSL_CONF_OPTS +=  --enable-ocsp-responder
else
    WOLFSSL_CONF_OPTS += --disable-ocsp-responder
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_OCSP),y)
    WOLFSSL_CONF_OPTS +=  --enable-ocsp
else
    WOLFSSL_CONF_OPTS += --disable-ocsp
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MAXFRAGMENT),y)
    WOLFSSL_CONF_OPTS +=  --enable-maxfragment
else
    WOLFSSL_CONF_OPTS += --disable-maxfragment
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_RENEGOTIATION_INDICATION),y)
    WOLFSSL_CONF_OPTS +=  --enable-renegotiation-indication
else
    WOLFSSL_CONF_OPTS += --disable-renegotiation-indication
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SECURE_RENEGOTIATION),y)
    WOLFSSL_CONF_OPTS +=  --enable-secure-renegotiation
else
    WOLFSSL_CONF_OPTS += --disable-secure-renegotiation
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SUPPORTEDCURVES),y)
    WOLFSSL_CONF_OPTS +=  --enable-supportedcurves
else
    WOLFSSL_CONF_OPTS += --disable-supportedcurves
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SESSION_TICKET),y)
    WOLFSSL_CONF_OPTS +=  --enable-session-ticket
else
    WOLFSSL_CONF_OPTS += --disable-session-ticket
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_EXTENDED_MASTER),y)
    WOLFSSL_CONF_OPTS +=  --enable-extended-master
else
    WOLFSSL_CONF_OPTS += --disable-extended-master
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_EARLYDATA),y)
    WOLFSSL_CONF_OPTS +=  --enable-earlydata
else
    WOLFSSL_CONF_OPTS += --disable-earlydata
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SCEP),y)
    WOLFSSL_CONF_OPTS +=  --enable-scep
else
    WOLFSSL_CONF_OPTS += --disable-scep
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SRP),y)
    WOLFSSL_CONF_OPTS +=  --enable-srp
else
    WOLFSSL_CONF_OPTS += --disable-srp
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_JNI),y)
    WOLFSSL_CONF_OPTS +=  --enable-jni
else
    WOLFSSL_CONF_OPTS += --disable-jni
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ENCKEYS),y)
    WOLFSSL_CONF_OPTS +=  --enable-enckeys
else
    WOLFSSL_CONF_OPTS += --disable-enckeys
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SCRYPT),y)
    WOLFSSL_CONF_OPTS +=  --enable-scrypt
else
    WOLFSSL_CONF_OPTS += --disable-scrypt
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ASYNCCRYPT),y)
    WOLFSSL_CONF_OPTS +=  --enable-asynccrypt
else
    WOLFSSL_CONF_OPTS += --disable-asynccrypt
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ASYNCCRYPT_SW),y)
    WOLFSSL_CONF_OPTS +=  --enable-asynccrypt-sw
else
    WOLFSSL_CONF_OPTS += --disable-asynccrypt-sw
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ASYNCTHREADS),y)
    WOLFSSL_CONF_OPTS +=  --enable-asyncthreads
else
    WOLFSSL_CONF_OPTS += --disable-asyncthreads
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SESSIONEXPORT),y)
    WOLFSSL_CONF_OPTS +=  --enable-sessionexport
else
    WOLFSSL_CONF_OPTS += --disable-sessionexport
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MEMTEST),y)
    WOLFSSL_CONF_OPTS +=  --enable-memtest
else
    WOLFSSL_CONF_OPTS += --disable-memtest
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SYS_CA_CERTS),y)
    WOLFSSL_CONF_OPTS +=  --enable-sys-ca-certs
else
    WOLFSSL_CONF_OPTS += --disable-sys-ca-certs
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_RPK),y)
    WOLFSSL_CONF_OPTS +=  --enable-rpk
else
    WOLFSSL_CONF_OPTS += --disable-rpk
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CERT_SETUP_CB),y)
    WOLFSSL_CONF_OPTS +=  --enable-cert-setup-cb
else
    WOLFSSL_CONF_OPTS += --disable-cert-setup-cb
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_PKCS11),y)
    WOLFSSL_CONF_OPTS +=  --enable-pkcs11
else
    WOLFSSL_CONF_OPTS += --disable-pkcs11
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_RSA),y)
    WOLFSSL_CONF_OPTS +=  --enable-rsa
else
    WOLFSSL_CONF_OPTS += --disable-rsa
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_RSAPSS),y)
    WOLFSSL_CONF_OPTS +=  --enable-rsapss
else
    WOLFSSL_CONF_OPTS += --disable-rsapss
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_HKDF),y)
    WOLFSSL_CONF_OPTS +=  --enable-hkdf
else
    WOLFSSL_CONF_OPTS += --disable-hkdf
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DILITHIUM),y)
    WOLFSSL_CONF_OPTS +=  --enable-dilithium
else
    WOLFSSL_CONF_OPTS += --disable-dilithium
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MLDSA),y)
    WOLFSSL_CONF_OPTS +=  --enable-mldsa
else
    WOLFSSL_CONF_OPTS += --disable-mldsa
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_KYBER),y)
    WOLFSSL_CONF_OPTS +=  --enable-kyber
else
    WOLFSSL_CONF_OPTS += --disable-kyber
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_MLKEM),y)
    WOLFSSL_CONF_OPTS +=  --enable-mlkem
else
    WOLFSSL_CONF_OPTS += --disable-mlkem
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_PQC_HYBRIDS),y)
    WOLFSSL_CONF_OPTS +=  --enable-pqc-hybrids
else
    WOLFSSL_CONF_OPTS += --disable-pqc-hybrids
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_EXTRA_PQC_HYBRIDS),y)
    WOLFSSL_CONF_OPTS +=  --enable-extra-pqc-hybrids
else
    WOLFSSL_CONF_OPTS += --disable-extra-pqc-hybrids
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SLHDSA),y)
    WOLFSSL_CONF_OPTS +=  --enable-slhdsa
else
    WOLFSSL_CONF_OPTS += --disable-slhdsa
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ECH),y)
    WOLFSSL_CONF_OPTS +=  --enable-ech
else
    WOLFSSL_CONF_OPTS += --disable-ech
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_CURVE25519),y)
    WOLFSSL_CONF_OPTS +=  --enable-curve25519
else
    WOLFSSL_CONF_OPTS += --disable-curve25519
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ED25519),y)
    WOLFSSL_CONF_OPTS +=  --enable-ed25519
else
    WOLFSSL_CONF_OPTS += --disable-ed25519
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ED25519_STREAM),y)
    WOLFSSL_CONF_OPTS +=  --enable-ed25519-stream
else
    WOLFSSL_CONF_OPTS += --disable-ed25519-stream
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DH),y)
    WOLFSSL_CONF_OPTS +=  --enable-dh
else
    WOLFSSL_CONF_OPTS += --disable-dh
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_PKCS7),y)
    WOLFSSL_CONF_OPTS +=  --enable-pkcs7
else
    WOLFSSL_CONF_OPTS += --disable-pkcs7
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_PKCS8),y)
    WOLFSSL_CONF_OPTS +=  --enable-pkcs8
else
    WOLFSSL_CONF_OPTS += --disable-pkcs8
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_PKCS12),y)
    WOLFSSL_CONF_OPTS +=  --enable-pkcs12
else
    WOLFSSL_CONF_OPTS += --disable-pkcs12
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_PSK),y)
    WOLFSSL_CONF_OPTS +=  --enable-psk
else
    WOLFSSL_CONF_OPTS += --disable-psk
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_DSA),y)
    WOLFSSL_CONF_OPTS +=  --enable-dsa
else
    WOLFSSL_CONF_OPTS += --disable-dsa
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_ECC),y)
    WOLFSSL_CONF_OPTS +=  --enable-ecc
else
    WOLFSSL_CONF_OPTS += --disable-ecc
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_STATIC),y)
    WOLFSSL_CONF_OPTS +=  --enable-static
else
    WOLFSSL_CONF_OPTS += --disable-static
endif

ifeq ($(BR2_PACKAGE_WOLFSSL_SHARED),y)
    WOLFSSL_CONF_OPTS +=  --enable-shared
else
    WOLFSSL_CONF_OPTS += --disable-shared
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
