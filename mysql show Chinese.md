��1���鿴mysqlĬ�ϱ���
mysql> show variables like 'character%';

��2��mysql�����ļ�
vim /etc/my.cnf

��3������mysql����
[mysqld]
default-character-set=utf8
init_connect='SET NAMES utf8'

[client]
default-character-set=utf8

��4��������˳���������mysql����
# service mysqld restart

�μ���centos�� mysql��������Ĵ�������
http://www.centoscn.com/CentosBug/softbug/2014/0821/3532.html