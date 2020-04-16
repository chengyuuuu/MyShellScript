#!/bin/bash

#打印红色字
function printR()
{
	echo -e "\033[31m Error $* \033[0m"
}

#打印绿色字
function printG()
{
	echo -e "\033[32m $* \033[0m"
}

#打印黄色字
function printY()
{
	echo -e "\033[33m $* \033[0m"
}

#带退出功能的printR
function failed()
{
	printR ${*}
	exit 1
}