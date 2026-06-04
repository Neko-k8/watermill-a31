#!/bin/bash

export CROSS_COMPILE=/run/media/hakyura/261dea50-a8a4-4d2a-8b3e-540a49827e31/toolchain/aarch64--glibc--stable-2024.05-1/bin/aarch64-buildroot-linux-gnu-
export CC=/run/media/hakyura/261dea50-a8a4-4d2a-8b3e-540a49827e31toolchain/linux-x86-refs_tags_android-9.0.0_r3-clang-4691093/binclang
export CLANG_TRIPLE=aarch64-linux-gnu-
export ARCH=arm64
export ANDROID_MAJOR_VERSION=r

export KCFLAGS=-w
export CONFIG_SECTION_MISMATCH_WARN_ONLY=y

make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y watermill_defconfig
make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y -j4

cp out/arch/arm64/boot/Image.gz.d $(pwd)/arch/arm64/boot/Image