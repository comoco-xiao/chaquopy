#!/bin/bash
set -eu

source_dir=$PWD/third_party/sleef
build_sleef_native=$PWD/build-sleef-native

unset AR ARFLAGS AS CC CFLAGS CPP CPPFLAGS CXX CXXFLAGS F77 F90 FARCH FC LD LDFLAGS LDSHARED \
      NM RANLIB READELF STRIP CMAKE_TOOLCHAIN_FILE

cmake -S $source_dir -B $build_sleef_native
cmake --build $build_sleef_native -j --clean-first