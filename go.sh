#!/bin/bash

source ./assert/load.sh 

choose='0'
echo -e "\
0.退出\n\
1.安装所有软件包\n\
2.安装部分软件包\n\
3.配置运行环境\n\
"
read -p "选择要执行的操作: " choose

test ${choose} == '0' && source ./choose/quit.sh
test ${choose} == '1' && source ./choose/install_all.sh
test ${choose} == '2' && source ./choose/install.sh
test ${choose} == '3' && source ./choose/config.sh

unset choose