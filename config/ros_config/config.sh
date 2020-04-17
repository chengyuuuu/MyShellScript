#!/bin/bash

is_equ ${version:0:2} "18" || failed "请使用18.04版本的Ubuntu系统安装ros"
is_equ ${system} "Ubuntu" || failed "请使用18.04版本的Ubuntu系统安装ros"

username="cheng"
read -p "请输入要配置ros的用户名" username


printG "配置软件源"
sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
assert ${?} "配置软件源失败"

printG "添加密钥"
apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
assert ${?} "添加密钥失败"

printG "安装ROS"
apt-get update
apt-get install -y python-rosdep2 ros-melodic-desktop-full 

printG "初始化rosdep"
rosdep init
assert ${?} "rosdep init失败"
rosdep update
assert ${?} "rosdep update失败"

printG "设置环境变量"
echo "source /opt/ros/melodic/setup.bash" >> /home/${username}/.bashrc
source /home/${username}/.bashrc
assert ${?} "设置环境变量失败"

printG "安装rosinstall"
apt install -y python-rosinstall python-rosinstall-generator python-wstool build-essential

chown cheng /home/${username}/.ros
chgrp cheng /home/${username}/.ros

