#! /usr/bin/env sh

set -ex

PB_SDK_CFG="$(readlink -f "./SDK_6.3.0/SDK-B288/config.cmake")" \
cmake \
    -DCMAKE_TOOLCHAIN_FILE=./SDK_6.3.0/SDK-B288/share/cmake/arm_conf.cmake \
    -S. -B./build "$@"

