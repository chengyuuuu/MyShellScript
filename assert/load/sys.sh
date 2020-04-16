#!/bin/bash

system=$(cat /etc/issue | cut -d ' ' -f 1)
version=$(cat /etc/issue | cut -d ' ' -f 2)

function is_equ()
{
	if [ ${1} == ${2} ]; then
		return 0
    else
        return 1
    fi
}
