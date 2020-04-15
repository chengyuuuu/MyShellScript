#!/bin/bash

printG "编辑安装软件列表..."
vim ./install/install_config.sh

printG "执行安装软件列表软件脚本"
source ./choose/install_all.sh