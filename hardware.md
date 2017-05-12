（1）CPU
lscpu	查看的是cpu的统计信息
cat /proc/cupinfo	查看的是cpu的详细信息
getconf LONG_BIT	查看当前CPU运行在32/64bit模式

（2）内存
free -g	查看内存
cat /proc/meminfo	查看内存信息

（3）硬盘和分区
lsblk	查看硬盘和分区分布
fdisk -l	看硬盘和分区的详细信息
lsscsi	列出像硬盘和光驱等 scsi/sata设备的信息
df 列出不同分区的概要信息、挂载点、已用的和可用的空间
dmesg	查询硬件和boot信息

（4）网络
ifconfig -a	查看系统的所有网络接口
ethtool eth0	查看某个网络接口的详细信息
dmesg | grep -i eth	查看网卡信息 

（5）中断
cat /proc/interrupts	查看各设备的中断请求(IRQ)

（6）内核
uname -a
