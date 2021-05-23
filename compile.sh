#!/bin/bash
make O=out ARCH=arm64 nethunter_defconfig


# change paths here:
clangPath="$HOME/linux-x86-android-10.0.0_r3-clang-r353983c/bin"
gccArm64Path="$HOME/aarch64-linux-android-4.9/bin"
gccArmPath="$HOME/arm-linux-androideabi-4.9/bin"
echo $clangPath

PATH="${clangPath}:${gccArm64Path}:${gccArmPath}:${PATH}" \
make -j$(nproc --all) O=out \
                      ARCH=arm64 \
                      CC=clang \
                      CLANG_TRIPLE=aarch64-linux-gnu- \
                      CROSS_COMPILE=aarch64-linux-android- \
                      CROSS_COMPILE_ARM32=arm-linux-androideabi-
