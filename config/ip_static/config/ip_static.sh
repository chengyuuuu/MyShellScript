#!/bin/bash

source ${config_dir}/info.sh


#计算配置信息，并写入interfaces
echo -e "\
auto ${netCard}\n\
iface ${netCard} inet static\n\
address ${staticIP}\n\
netmask 255.255.255.0\n\
gateway ${gateway}${gateway_suffix}\n\
dns-nameserver 119.28.28.28\n\
" >> ./interfaces

#将配置信息写入/etc/network/interfaces中
printG "将配置信息写入/etc/network/interfaces中..."
mv ./interfaces /etc/network/interfaces

#重启网络服务
printG "重启网络服务....... "
service networking restart
