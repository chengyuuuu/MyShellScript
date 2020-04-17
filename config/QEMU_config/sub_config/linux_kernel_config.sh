#!/bin/bash

#解压linux内核到压缩包所在目录，并进行编译
printG "解压linux内核，并进行相关配置...... "
tar -xf ${package_dir}/${LINUX_VERSION}.tar.xz -C ${package_dir}/
cd ${package_dir}/${LINUX_VERSION}
make CROSS_COMPILE='arm-linux-gnueabi-' ARCH=arm vexpress_defconfig
make CROSS_COMPILE='arm-linux-gnueabi-' ARCH=arm -j4
cd -





