TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.c \
    mbedtls/library/aes.c \
    mbedtls/library/aesni.c \
    mbedtls/library/arc4.c \
    mbedtls/library/aria.c \
    mbedtls/library/asn1parse.c \
    mbedtls/library/asn1write.c \
    mbedtls/library/base64.c \
    mbedtls/library/bignum.c \
    mbedtls/library/blowfish.c \
    mbedtls/library/camellia.c \
    mbedtls/library/ccm.c \
    mbedtls/library/certs.c \
    mbedtls/library/chacha20.c \
    mbedtls/library/chachapoly.c \
    mbedtls/library/cipher.c \
    mbedtls/library/cipher_wrap.c \
    mbedtls/library/cmac.c \
    mbedtls/library/ctr_drbg.c \
    mbedtls/library/debug.c \
    mbedtls/library/des.c \
    mbedtls/library/dhm.c \
    mbedtls/library/ecdh.c \
    mbedtls/library/ecdsa.c \
    mbedtls/library/ecjpake.c \
    mbedtls/library/ecp.c \
    mbedtls/library/ecp_curves.c \
    mbedtls/library/entropy.c \
    mbedtls/library/entropy_poll.c \
    mbedtls/library/error.c \
    mbedtls/library/gcm.c \
    mbedtls/library/havege.c \
    mbedtls/library/hkdf.c \
    mbedtls/library/hmac_drbg.c \
    mbedtls/library/md.c \
    mbedtls/library/md2.c \
    mbedtls/library/md4.c \
    mbedtls/library/md5.c \
    mbedtls/library/md_wrap.c \
    mbedtls/library/memory_buffer_alloc.c \
    mbedtls/library/net_sockets.c \
    mbedtls/library/nist_kw.c \
    mbedtls/library/oid.c \
    mbedtls/library/padlock.c \
    mbedtls/library/pem.c \
    mbedtls/library/pk.c \
    mbedtls/library/pk_wrap.c \
    mbedtls/library/pkcs11.c \
    mbedtls/library/pkcs12.c \
    mbedtls/library/pkcs5.c \
    mbedtls/library/pkparse.c \
    mbedtls/library/pkwrite.c \
    mbedtls/library/platform.c \
    mbedtls/library/platform_util.c \
    mbedtls/library/poly1305.c \
    mbedtls/library/ripemd160.c \
    mbedtls/library/rsa.c \
    mbedtls/library/rsa_internal.c \
    mbedtls/library/sha1.c \
    mbedtls/library/sha256.c \
    mbedtls/library/sha512.c \
    mbedtls/library/ssl_cache.c \
    mbedtls/library/ssl_ciphersuites.c \
    mbedtls/library/ssl_cli.c \
    mbedtls/library/ssl_cookie.c \
    mbedtls/library/ssl_srv.c \
    mbedtls/library/ssl_ticket.c \
    mbedtls/library/ssl_tls.c \
    mbedtls/library/threading.c \
    mbedtls/library/timing.c \
    mbedtls/library/version.c \
    mbedtls/library/version_features.c \
    mbedtls/library/x509.c \
    mbedtls/library/x509_create.c \
    mbedtls/library/x509_crl.c \
    mbedtls/library/x509_crt.c \
    mbedtls/library/x509_csr.c \
    mbedtls/library/x509write_crt.c \
    mbedtls/library/x509write_csr.c \
    mbedtls/library/xtea.c

LIBS += -lws2_32

INCLUDEPATH += $$PWD/mbedtls/include/

include(deployment.pri)
qtcAddDeployment()

HEADERS += \
    mbedtls/include/mbedtls/aes.h \
    mbedtls/include/mbedtls/aesni.h \
    mbedtls/include/mbedtls/arc4.h \
    mbedtls/include/mbedtls/aria.h \
    mbedtls/include/mbedtls/asn1.h \
    mbedtls/include/mbedtls/asn1write.h \
    mbedtls/include/mbedtls/base64.h \
    mbedtls/include/mbedtls/bignum.h \
    mbedtls/include/mbedtls/blowfish.h \
    mbedtls/include/mbedtls/bn_mul.h \
    mbedtls/include/mbedtls/camellia.h \
    mbedtls/include/mbedtls/ccm.h \
    mbedtls/include/mbedtls/certs.h \
    mbedtls/include/mbedtls/chacha20.h \
    mbedtls/include/mbedtls/chachapoly.h \
    mbedtls/include/mbedtls/check_config.h \
    mbedtls/include/mbedtls/cipher.h \
    mbedtls/include/mbedtls/cipher_internal.h \
    mbedtls/include/mbedtls/cmac.h \
    mbedtls/include/mbedtls/compat-1.3.h \
    mbedtls/include/mbedtls/config.h \
    mbedtls/include/mbedtls/ctr_drbg.h \
    mbedtls/include/mbedtls/debug.h \
    mbedtls/include/mbedtls/des.h \
    mbedtls/include/mbedtls/dhm.h \
    mbedtls/include/mbedtls/ecdh.h \
    mbedtls/include/mbedtls/ecdsa.h \
    mbedtls/include/mbedtls/ecjpake.h \
    mbedtls/include/mbedtls/ecp.h \
    mbedtls/include/mbedtls/ecp_internal.h \
    mbedtls/include/mbedtls/entropy.h \
    mbedtls/include/mbedtls/entropy_poll.h \
    mbedtls/include/mbedtls/error.h \
    mbedtls/include/mbedtls/gcm.h \
    mbedtls/include/mbedtls/havege.h \
    mbedtls/include/mbedtls/hkdf.h \
    mbedtls/include/mbedtls/hmac_drbg.h \
    mbedtls/include/mbedtls/md.h \
    mbedtls/include/mbedtls/md2.h \
    mbedtls/include/mbedtls/md4.h \
    mbedtls/include/mbedtls/md5.h \
    mbedtls/include/mbedtls/md_internal.h \
    mbedtls/include/mbedtls/memory_buffer_alloc.h \
    mbedtls/include/mbedtls/net.h \
    mbedtls/include/mbedtls/net_sockets.h \
    mbedtls/include/mbedtls/nist_kw.h \
    mbedtls/include/mbedtls/oid.h \
    mbedtls/include/mbedtls/padlock.h \
    mbedtls/include/mbedtls/pem.h \
    mbedtls/include/mbedtls/pk.h \
    mbedtls/include/mbedtls/pk_internal.h \
    mbedtls/include/mbedtls/pkcs11.h \
    mbedtls/include/mbedtls/pkcs12.h \
    mbedtls/include/mbedtls/pkcs5.h \
    mbedtls/include/mbedtls/platform.h \
    mbedtls/include/mbedtls/platform_time.h \
    mbedtls/include/mbedtls/platform_util.h \
    mbedtls/include/mbedtls/poly1305.h \
    mbedtls/include/mbedtls/ripemd160.h \
    mbedtls/include/mbedtls/rsa.h \
    mbedtls/include/mbedtls/rsa_internal.h \
    mbedtls/include/mbedtls/sha1.h \
    mbedtls/include/mbedtls/sha256.h \
    mbedtls/include/mbedtls/sha512.h \
    mbedtls/include/mbedtls/ssl.h \
    mbedtls/include/mbedtls/ssl_cache.h \
    mbedtls/include/mbedtls/ssl_ciphersuites.h \
    mbedtls/include/mbedtls/ssl_cookie.h \
    mbedtls/include/mbedtls/ssl_internal.h \
    mbedtls/include/mbedtls/ssl_ticket.h \
    mbedtls/include/mbedtls/threading.h \
    mbedtls/include/mbedtls/timing.h \
    mbedtls/include/mbedtls/version.h \
    mbedtls/include/mbedtls/x509.h \
    mbedtls/include/mbedtls/x509_crl.h \
    mbedtls/include/mbedtls/x509_crt.h \
    mbedtls/include/mbedtls/x509_csr.h \
    mbedtls/include/mbedtls/xtea.h

