#!/bin/bash

QEMU_config_dir="./config/QEMU_config"
package_dir="${QEMU_config_dir}/package"
sub_config_dir="${QEMU_config_dir}/sub_config_dir" 

FSTYPE="ext3"
LINUX_VERSION="linux-4.4.217"

QEMU_VERSION="qemu-3.0.1"

failed "QEMU配置的脚本还未完成"
#安装相关软件包工具
source ${sub_config_dir}/install_tools.sh

#进行linux kernel 相关配置
source ${sub_config_dir}/linux_kernel_config.sh

#进行qemu相关配置
source ${sub_config_dir}/qemu_config.sh

#进行busybox相关配置
source ${sub_config_dir}/busybox_config.sh

#制作根文件系统
source ${sub_config_dir}/rootfs_make.sh

#制作系统镜像
source ${sub_config_dir}/ghost_make.sh

#配置运行qemu的命令
source ${sub_config_dir}/command_make.sh


