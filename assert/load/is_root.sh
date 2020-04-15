#!/bin/bash

source ./assert/load/print.sh

printG "检查用户身份..."
if [ $(whoami) != 'root' ]; then
    printR "\033[32m 请以root身份登录 \033[0m"
    exit 1
fi