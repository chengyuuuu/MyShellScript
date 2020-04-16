#!/bin/bash

#填写配置信息：
netCard=enp3s0f1
staticIP=192.168.2.2
gateway=${staticIP%.*}
gateway_suffix='.1'
