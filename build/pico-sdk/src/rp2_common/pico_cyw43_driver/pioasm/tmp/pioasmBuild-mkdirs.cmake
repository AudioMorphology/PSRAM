# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "F:/Dev/tools/pico-sdk-master/tools/pioasm"
  "F:/Dev/PimoroniPicoPlus2/PSRAM/build/pioasm"
  "F:/Dev/PimoroniPicoPlus2/PSRAM/build/pioasm-install"
  "F:/Dev/PimoroniPicoPlus2/PSRAM/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/tmp"
  "F:/Dev/PimoroniPicoPlus2/PSRAM/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/pioasmBuild-stamp"
  "F:/Dev/PimoroniPicoPlus2/PSRAM/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src"
  "F:/Dev/PimoroniPicoPlus2/PSRAM/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/pioasmBuild-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "F:/Dev/PimoroniPicoPlus2/PSRAM/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/pioasmBuild-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "F:/Dev/PimoroniPicoPlus2/PSRAM/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/pioasmBuild-stamp${cfgdir}") # cfgdir has leading slash
endif()
