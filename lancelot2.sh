#!/bin/bash

echo "Hi lancelot user just wait and watch "

export PATH="${PWD}/proton-clang/bin/:${PATH}"
make -j$(nproc --all) O=out \
                      ARCH=arm64 \
                      LD=${PWD}/proton-clang/bin/ld.lld \
		       OBJCOPY=${PWD}/proton-clang/bin/llvm-objcopy \
		       AS=${PWD}/proton-clang/bin/llvm-as \
		       NM=${PWD}/proton-clang/bin/llvm-nm \
		       STRIP=${PWD}/proton-clang/bin/llvm-strip \
		       OBJDUMP=${PWD}/proton-clang/bin/llvm-objdump \
		       READELF=${PWD}/proton-clang/bin/llvm-readelf \
                      CC=${PWD}/proton-clang/bin/clang \
                      CROSS_COMPILE=${PWD}/proton-clang/bin/aarch64-linux-gnu- \
                      CROSS_COMPILE_ARM32=${PWD}/proton-clang/bin/arm-linux-gnueabi- 
cd - || exit
