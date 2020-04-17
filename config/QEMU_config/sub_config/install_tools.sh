#!/bin/bash

#安装相关依赖工具
printG "安装libncurses5-dev......"
source ${install_dir}/libncurses5-dev.sh
printG "安装zlib1g-dev_libglib2.0-0_libglib2.0-dev......"
source ${install_dir}/zlib1g-dev_libglib2.0-0_libglib2.0-dev.sh
printG "安装flex_bison......"
source ${install_dir}/flex_bison.sh
printG "安装u-boot-tools......"
source ${install_dir}/u-boot-tools.sh
printG "安装git......"
source ${install_dir}/git.sh
printG "安装tree......"
source ${install_dir}/tree.sh
printG "安装gcc-arm-linux-gnueabi......"
source ${install_dir}/gcc-arm-linux-gnueabi.sh
#printG "安装qemu......"
#source ${install_dir}/qemu.sh

