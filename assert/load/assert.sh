#!/bin/bash

source ./assert/load/print.sh
#第一个参数为上次命令运行的结果
#第二个参数为要输出的错误信息
function assert() 
{
	if [ ${1} -ne 0 ]; then
		failed ${*}
	fi
}

