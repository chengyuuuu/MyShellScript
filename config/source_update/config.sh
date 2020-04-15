#!/bin/bash

system=$(cat /etc/issue | cut -d ' ' -f 1)
version=$(cat /etc/issue | cut -d ' ' -f 2)
source_dir="./config/source_update"
#检查发行版类型
printG "检查系统版本...... "
if [ ${system} == "Ubuntu" ]; then

	#检查发行版版本
	if [ ${version:0:2} == "18" ]; then
		
		cp --backup=numbered ${source_dir}/ubuntu18.04-sources.list /etc/apt/sources.list

	elif [ ${version:0:2} == "16" ]; then

		cp --backup=numbered ${source_dir}/ubuntu16.04-sources.list /etc/apt/sources.list

	elif [ ${version:0:2} == "14" ]; then

		cp --backup=numbered ${source_dir}/ubuntu14.04-sources.list /etc/apt/sources.list

	else 
		printR "没有为${version}版本准备合适的源"
		exit 1
	fi

else 
	printR "没有为${system}发行版准备合适的源"
	exit 1
fi

#更新源，更新软件
printG "更新源和软件...... "
apt-get update
apt-get -y upgrade

