#!/bin/bash

echo "Hi lancelot user just wait and watch "

mkdir out
export ARCH=arm64
export SUBARCH=arm64
export DTC_EXT=dtc
make O=out ARCH=arm64 lancelot_defconfig menuconfig
