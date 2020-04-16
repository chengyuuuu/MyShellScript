#!/bin/bash

config_dir="./config/NFS_config/config"

printG "安装nfs-kernel-server..."
apt-get install -y nfs-kernel-server &> /dev/null

echo -e "\
0.退出\n\
1.配置NFS客户端\n\
2.配置NFS服务器\n\
"
read -p "选择要执行的操作: " choose

test ${choose} == '0' && source ./choose/quit.sh
test ${choose} == '1' && source ${config_dir}/NFS_Client.sh
test ${choose} == '2' && source ${config_dir}/NFS_Server.sh
