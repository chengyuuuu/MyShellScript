#!/bin/bash


#对qemu进行配置并安装
printG "配置qemu......"
tar -xf ${package_dir}/${QEMU_VERSION}* -C ${package_dir}/
cd ${package_dir}/${QEMU_VERSION}
./configure --target-list=arm-softmmu --audio-drv-list=
make -j4
make install -j4
cd -



