#!/bin/bash
set -eu

source_dir=$PWD/third_party/sleef
build_sleef_native=$PWD/build-sleef-native

cmake -S $source_dir -B $build_sleef_native
cmake --build $build_sleef_native -j --clean-first