# Install script for directory: F:/Dev/tools/pico-sdk-master/lib/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "F:/Dev/PimoroniPicoPlus2/PSRAM/build/_deps")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "F:/Dev/tools/mingw64/bin/objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE MESSAGE_NEVER PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/aes.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/aesni.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/arc4.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/aria.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/asn1.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/asn1write.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/base64.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/bignum.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/blowfish.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/bn_mul.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/camellia.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/ccm.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/certs.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/chacha20.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/chachapoly.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/check_config.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/cipher.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/cipher_internal.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/cmac.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/compat-1.3.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/config.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/config_psa.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/constant_time.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/ctr_drbg.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/debug.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/des.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/dhm.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/ecdh.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/ecdsa.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/ecjpake.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/ecp.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/ecp_internal.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/entropy.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/entropy_poll.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/error.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/gcm.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/havege.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/hkdf.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/hmac_drbg.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/md.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/md2.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/md4.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/md5.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/md_internal.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/net.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/net_sockets.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/nist_kw.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/oid.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/padlock.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/pem.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/pk.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/pk_internal.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/pkcs11.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/pkcs12.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/pkcs5.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/platform.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/platform_time.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/platform_util.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/poly1305.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/psa_util.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/ripemd160.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/rsa.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/rsa_internal.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/sha1.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/sha256.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/sha512.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/ssl.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/ssl_cache.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/ssl_cookie.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/ssl_internal.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/ssl_ticket.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/threading.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/timing.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/version.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/x509.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/x509_crl.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/x509_crt.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/x509_csr.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/mbedtls/xtea.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE MESSAGE_NEVER PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/psa/crypto.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/psa/crypto_builtin_composites.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/psa/crypto_builtin_primitives.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/psa/crypto_compat.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/psa/crypto_config.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/psa/crypto_driver_common.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/psa/crypto_extra.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/psa/crypto_platform.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/psa/crypto_se_driver.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/psa/crypto_sizes.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/psa/crypto_struct.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/psa/crypto_types.h"
    "F:/Dev/tools/pico-sdk-master/lib/mbedtls/include/psa/crypto_values.h"
    )
endif()

