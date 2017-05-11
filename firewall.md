
centos防火墙操作

1 关闭防火墙-----service iptables stop 
2 启动防火墙-----service iptables start 
3 重启防火墙-----service iptables restart 
4 查看防火墙状态--service iptables status 
5 永久关闭防火墙--chkconfig iptables off 
6 永久关闭后启用--chkconfig iptables on

====================================================================

suse防火墙操作

1. 检查 SuSE防火墙是否设置为启动
   ##chkconfig --list | grep firewall

2. 永久关闭防火墙服务
   #chkconfig SuSEfirewall2_init off
   #chkconfig SuSEfirewall2_setup off

3. 临时关闭防火墙服务
   #rcSuSEfirewall2 stop

也可通过yast-》system-》xx disabled

====================================================================

场景1：IP能ping通，但xshell连接失败

解决方法一：关闭防火墙
解决方法二：
	#vim /etc/sysconfig/iptables
	添加以下内容

-------------------------------------------------------------------
	
# Firewall configuration written by system-config-firewall
# Manual customization of this file is not recommended.
*filter
:INPUT ACCEPT [0:0]
:FORWARD ACCEPT [0:0]
:OUTPUT ACCEPT [0:0]
-A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
-A INPUT -p icmp -j ACCEPT
-A INPUT -i lo -j ACCEPT
-A INPUT -m state --state NEW -m tcp -p tcp --dport 22 -j ACCEPT
-A INPUT -m state --state NEW -m tcp -p tcp --dport 3306 -j ACCEPT
-A INPUT -j REJECT --reject-with icmp-host-prohibited
-A FORWARD -j REJECT --reject-with icmp-host-prohibited
COMMIT
-------------------------------------------------------------------