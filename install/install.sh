#!/bin/bash

source ./install/install_config.sh

printG "将要安装${apt_list}"
for apt_install in ${apt_list}
do
    printG "安装${apt_install}..."
    apt-get install -y ${apt_install}
    assert ${?} "${apt_install} 安装失败"
done
