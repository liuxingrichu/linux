（1）查看mysql默认编码
mysql> show variables like 'character%';

（2）mysql配置文件
vim /etc/my.cnf

（3）新增mysql配置
[mysqld]
default-character-set=utf8
init_connect='SET NAMES utf8'

[client]
default-character-set=utf8

（4）保存后退出，并重启mysql服务
# service mysqld restart

参见《centos下 mysql出现乱码的处理方法》
http://www.centoscn.com/CentosBug/softbug/2014/0821/3532.html