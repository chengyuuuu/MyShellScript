#!/bin/bash

#配置busybox
printG "配置busybox......"
tar -xf ${package_dir}/busybox-1.27.0.tar.bz2 -C ${package_dir}/
cd ${package_dir}/busybox-1.27.0
make defconfig -j4
make menuconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j4
make install -j4
cd -



