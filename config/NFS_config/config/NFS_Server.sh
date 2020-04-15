#!/bin/bash

source ./assert/load.sh

#编辑变量
vim ${config_dir}/Server_info.sh

#加载变量
source ${config_dir}/Server_info.sh 

#根据用户计算uid和gid
uid=$(id ${userName} |cut -d ' ' -f 1)
gid=$(id ${userName} |cut -d ' ' -f 2)
uid=${uid#*=};uid=${uid%(*}
gid=${gid#*=};gid=${gid%(*}

#判断要共享的文件夹是否存在，如果不存在，则会自动创建
test -e ${ShareFolder} || \
printG "要共享的目录不存在，自动创建共享目录......";\
mkdir ${ShareFolder}

#计算配置信息，并将其输出
echo "${ShareFolder} ${ServerIP}/24 (rw,sync,all_squash,anonuid=${uid},anongid=${gid},no_subtree_check)" > ./exports

#将配置信息写入/etc/exports
printG "写入/etc/exports... "
cat ./exports >> /etc/exports

#创建共享目录，更新exports配置
printG "创建共享目录... "
exportfs -arv
printG "更新exports配置... " 
showmount -e

#删除临时文件和变量，打印/etc/exports中最终信息
rm ./exports

unset ServerIP
unset ShareFolder
unset userName
unset uid
unset gid

printG " /etc/exports 中的最终配置信息为："
cat /etc/exports







