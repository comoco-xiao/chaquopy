#!/bin/bash
set -eu

build_sleef_native=$PWD/build-sleef-native

cd third_party/sleef
cmake -S . -B $build_sleef_native
cmake --build $build_sleef_native -j --clean-first