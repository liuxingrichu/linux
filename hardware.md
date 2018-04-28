### 硬件信息 ###
- CPU
	- lscpu	查看的是cpu的统计信息
	- cat /proc/cupinfo	查看的是cpu的详细信息
	- getconf LONG_BIT	查看当前CPU运行在32/64bit模式
	- dmidecode | grep -i 'version' 	CPU信息

- 内存
	- free -g	查看内存
	- cat /proc/meminfo	查看内存信息
	- dmidecode | grep -i 'size'

- 硬盘和分区
	- lsblk	查看硬盘和分区分布
	- fdisk -l	看硬盘和分区的详细信息
		- fdisk -l | grep dm 检测是否有组raid
		- 服务器未组raid，会影响系统对盘的识别
	- lsscsi	列出像硬盘和光驱等 scsi/sata设备的信息
	- df 列出不同分区的概要信息、挂载点、已用的和可用的空间
	- dmesg	查询硬件和boot信息
	- mount	查询挂载信息

- 网络
	- ifconfig -a	查看系统的所有网络接口
	- ethtool eth0	查看某个网络接口的详细信息
	- dmesg | grep -i eth	查看网卡信息 

- 中断
	- cat /proc/interrupts	查看各设备的中断请求(IRQ)

- 内核
	- uname -a
		- arm(xxx0)：aarch64
		- x86(xxx8)：x86_64

- 硬件设备挂卸载

		# mkfs /dev/sdb	文件系统分区
		# mount /dev/sdb	/mnt/test/	挂载
		# umount /dev/sdb	/mnt/test/	卸载
		# sync	刷新

- 系统盘与数据盘

		系统盘对应为/
		方法：mount、df -h、lsblk

- 图形界面卡死解决方法
	- killall -9 gnome-shell

- 查询设备名称
	- dmidecode | grep -i 'Product Name:'

- 查询资产编号
	- dmidecode | grep -i 'Serial Number:'

- 配置yum源
	- cd /etc/yum.repos.d/
	- vim Euler.repo
		
			[Euler]
			name=Euler
			baseurl=file:///media/CentOS_6.5_Final
			gpgcheck=0
			enabled=1
