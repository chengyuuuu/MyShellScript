#!/bin/bash




#制作根文件系统
printG "制作根文件系统......"
mkdir ${package_dir}/rootfs
mkdir ${package_dir}/rootfs/lib

cp -fr ${package_dir}/busybox-1.27.0/_install/* ${package_dir}/rootfs
cp -fp /usr/arm-linux-gnueabi/lib/* ./rootfs/lib
mkdir ${package_dir}/rootfs/dev/

cd ${package_dir}/rootfs/dev/
mknod -m 666 tty1 c 4 1 
mknod -m 666 tty2 c 4 2 
mknod -m 666 tty3 c 4 3 
mknod -m 666 tty4 c 4 4 
mknod -m 666 console c 5 1
mknod -m 666 null c 1 3
cd -



