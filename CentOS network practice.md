
（1）查看系统的所有网络接口
# ifconfig -a

（2）修改网络配置文件
# vim /etc/sysconfig/network-scripts/ifcfg-eth2

DEVICE=eth2
TYPE=Ethernet
ONBOOT=yes
NM_CONTROLLED=yes
BOOTPROTO=none
IPADDR=192.168.*.*
NETMASK=255.255.255.0
GATEWAY=192.168.*.1

注：IP、掩码与用户网络处于同一网络即可。

（3）修改DNS地址
方法一：
# vim /etc/resolv.conf
将以下IP
nameserver 192.168.*.*
修改为
与GATWAY相同的网络

方法二：
# dhclient

注：若dhclient已运行，可查杀dhclient进程
# ps -ef | grep dhclient
# kill -9 *

（4）网络重启
# service network restart

（5）网络监测
# ping www.baidu.com