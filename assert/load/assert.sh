#!/bin/bash

source ./assert/load/print.sh
#第一个参数为上次命令运行的结果
#第二个参数为要输出的错误信息
function assert() 
{
	if [ ${1} -ne 0 ]; then
	    printR "\033[32m $* \033[0m"
		exit 1
	fi
}

