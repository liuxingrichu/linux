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
	强制把系统时间写入CMOS
	#clock -w

