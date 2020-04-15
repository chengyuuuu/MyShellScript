#!/bin/bash
source ./assert/load.sh


#编辑变量
vim ${config_dir}/Client_info.sh

#加载变量
source ${config_dir}/Client_info.sh

#判断要共享的文件夹是否存在，如果不存在，则会自动创建
test -e ${ShareFolder_Server} || \
printG "要共享的目录不存在，自动创建共享目录......";\
mkdir ${ShareFolder_Server}


#挂在NFS文件系统到服务器
printG "挂载${ServerIP}:${ShareFolder_Server}到${ShareFolder_Client}....."
mount -o vers=4 ${ServerIP}:${ShareFolder_Server} ${ShareFolder_Client}








