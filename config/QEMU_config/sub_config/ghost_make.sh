#!/bin/bash

#制作系统镜像
printG "制作系统镜像"
dd if=/dev/zero of=${package_dir}/rootfs.${FSTYPE} bs=1M count=32
mkfs.${FSTYPE} ${package_dir}/rootfs.${FSTYPE}
mkdir ${package_dir}/mnt
mount -t ${FSTYPE} ${package_dir}/rootfs.${FSTYPE} ${package_dir}/mnt -o loop
cp -fr ${package_dir}/rootfs/* ${package_dir}/mnt 
umount ${package_dir}/rootfs.${FSTYPE} #这里的rootfs可看做是sd卡





