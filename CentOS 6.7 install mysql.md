查询与卸载
	#rpm -qa | grep mysql　　查看操作系统，是否安装mysql数据库
	#rpm -e mysql　　普通删除模式
	强力删除模式，如果使用上面命令删除时，提示有依赖的其它文件，
	则用该命令可以对其进行强力删除
	#rpm -e --nodeps mysql　
	
查看与安装
	#yum list | grep mysql 查看提供的mysql数据库，可下载的版本
	#yum install -y mysql-server mysql mysql-devel 安装
	#rpm -qi mysql-server 查看版本
	
初始化及相关配置
	#service mysqld start
	#chkconfig --list | grep mysqld 查看是否开机自启动
	#chkconfig mysqld on 设置开机启动
	
添加账号和登陆
	#/usr/bin/mysqladmin -u root password root123　　设置mysql的root账号密码
	#mysql -u root -p 登录数据库
	mysql> exit	退出数据库

数据库端口
	#netstat -anp| grep 3306 

授权Mysql远程访问
	mysql> grant all on *.* to admin@'localhost' identified by 'password';
	mysql> grant all on *.* to admin@'%' identified by 'password';
	mysql> flush privileges;

查看数据使用端口情况
	mysql> show global variables like 'port';

	
问题：pymysql.err.OperationalError: (2003, "Can't connect to MySQL server on '192.168.***.***' (timed out)")	
解决方法：
	（1）关闭防火墙
	（2）配置3306端口可以通过防火墙


CentOS关闭防火墙
	1、重启后永久性生效：
	开启：chkconfig iptables on
	关闭：chkconfig iptables off
	2、即时生效，重启后失效：
	开启：service iptables start
	关闭：service iptables stop
	3 查看防火墙状态
	# service iptables status
		
Centos配置3306通过防火墙
	#vim /etc/sysconfig/iptables
	-A INPUT -m state --state NEW -m tcp -p tcp --dport 3306 -j ACCEPT
	注：添加在22的下面
参看http://www.centoscn.com/CentOS/help/2014/1030/4021.html

查看用户清单
	mysql> use mysql
	mysql> select user, password, host from user;

添加用户
	mysql> use mysql;
	mysql> INSERT INTO user
		  (host, user, password,
		   select_priv, insert_priv, update_priv)
		   VALUES ('localhost', 'admin',
		   PASSWORD('123'), 'Y', 'Y', 'Y');	