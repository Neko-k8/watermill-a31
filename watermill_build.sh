#!/bin/bash

export CROSS_COMPILE=/home/hakyura/watermill-a31/toolchain/gcc-linaro-4.9.4-2017.01-x86_64_aarch64-elf/bin/aarch64-elf-
export CC=/home/hakyura/watermill-a31/toolchain/linux-x86-refs_tags_android-9.0.0_r3-clang-4691093/binclang
export CLANG_TRIPLE=aarch64-linux-gnu-
export ARCH=arm64
export ANDROID_MAJOR_VERSION=r

export KCFLAGS=-w
export CONFIG_SECTION_MISMATCH_WARN_ONLY=y

make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y 19581_defconfig
make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y -j4

cp out/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/Image