#!/bin/bash


#配置运行qemu的命令
echo '#!/bin/bash' > ${package_dir}/qemurun
echo 'FSNAME=${1}' >> ${package_dir}/qemurun
echo "qemu-system-arm -M vexpress-a9 -m 512M -kernel $(pwd)/package/${LINUX_VERSION}/arch/arm/boot/zImage -nographic -append \"init=/linuxrc root=/dev/mmcblk0 rw console=ttyAMA0\" -sd \${FSNAME}" >> ${package_dir}/qemurun
echo "unset fsname" >> ${package_dir}/qemurun
#-M vexpress-a9 : 模拟vexpress-a9单板
#-m 512M : 设置运行内存 512M
#-kernel : 制定内核所在的目录
#-nographic : 制定不使用图形化接口，只使用串口
#-append \"console=ttyAMA0\" 指定内核启动参数，这里制定串口设备用哪个tty

printG "qemu命令已配置完成，运行qemurun [镜像文件]来启动qemu"
chmod 777 ${package_dir}/qemurun
mv -f ${package_dir}/qemurun /bin



