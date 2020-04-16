#!/bin/bash

source_dir="./config/source_update"
#检查发行版类型
printG "检查系统版本...... "
if [ ${system} == "Ubuntu" ]; then
	#检查发行版版本
	for i in 18 16 14
	do
		is_equ ${version:0:2} ${i} \
		&& cp --backup=numbered ${source_dir}/ubuntu${i}.04-sources.list /etc/apt/sources.list; break \
		|| failed "没有为${i}版本准备合适的源"
	done
		
else 
	failed "没有为${system}发行版准备合适的源"
fi

#更新源，更新软件
printG "更新源和软件...... "
apt-get update
apt-get -y upgrade

