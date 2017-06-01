linux系统下date命令基本介绍

获取帮助信息
	#date --help
	
日期格式化
	#date "+%Y-%m-%d %H:%M:%S.%N"

获取当前时间
	#date
	#date -d today
	#date -d now

获取前天时间
	#date -d yestoday

获取明天时间
	#date -d tomorrow

时间设置
	修改系统时间
	#date -s 07/13/2016
	#date -s 11:12:00
	# date -s '2017-6-1 19:09'
	强制把系统时间写入CMOS
	#clock -w

时区设置
	# tzselect
	
硬件时钟（时钟芯片）
	硬件时钟是指主机板上的时钟设备，也就是通常可在BIOS画面设定的时钟。
	# hwclock 		查看当前时间	
	# hwclock -r	查看当前时间
	# hwclock -w	设置硬件时间
	# hwclock -h	获取帮助信息
	
UTC与CST	
	世界协调时间(Universal Time Coordinated,UTC)	
	CST China Standard Time UTC+8:00 中国沿海时间(北京时间)
	UTC时间就为零点，时间比北京时间晚八小时，即 CST - UTC = 8
	
	
	
