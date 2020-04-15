#!/bin/bash

config_list=$(ls -d ./config/*)
num=1
choose=0 #选择要配置的环境序号
array=() #存储要配置的环境的序号

#获取要配置的环境列表
for config in ${config_list}
do
    echo "${num}.$(basename ${config})"
    array[${num}]=${config}
    let num++
done

read -p "选择要配置的环境：(比如1 [空格] 2 [空格] n ...)" choose

#按照choose变量配置环境
for i in ${choose}
do
    printG "配置${array[i]}..."
    source ${array[i]}/config.sh
    assert ${?} "找不到${array[i]}/config.sh"
done

unset choose num config_list array


