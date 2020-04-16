#!/bin/bash
config_dir="./config/ip_static/config"
#编辑配置信息:
vim ${config_dir}/info.sh
printG "开始配置静态ip地址..."
source ${config_dir}/ip_static.sh