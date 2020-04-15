#!/bin/bash

source ./assert/load/print.sh

function check_rely()
{
    for file in ${*}; do
        test -e ${file}
        if [ ${?} == '1' ]; then
            printR "文件或目录${file}不存在"
            exit 1
        fi
    done
}
