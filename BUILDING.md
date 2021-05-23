# Disclaimer
This process will only work on a linux-based machine.

# Building
1. Download the prebuilt [clang toolchain](https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/android-10.0.0_r3/clang-r353983c.tar.gz) or build one yourself.
2. Download [binutils for arm64](https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/).
3. Download [binutils for arm](https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/).
4. Adjust paths in `compile.sh` to point to the /bin folders.
5. Run `./compile.sh`

See [this repo](https://github.com/nathanchance/android-kernel-clang) for more information.
