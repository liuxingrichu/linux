网络设置

在局域网和路由器环境，VMware上选择“桥接bridge”，在主机上添加虚拟网卡

（1）键入命令netconfig，输入IP地址、子网、网关、DNS地址
（2）重启网络service network restart
（3）激活网卡ifconfig eth0 up

-----------------------------------------
ifconfig eth2 down
ifconfig eth2 up
ifup eth2 up
ifdown eth0
ifup eth0

-----------------------------------------

方案一：
虚拟系统IP和DNS均设置为“自动获取”，虚拟机的网络配置模式设置为“NAT”

方案二：
虚拟机选择“网桥模式”，手动设置IP


VMware虚拟机上网络连接是三种模式：bridged（桥接模式）、host-only（主机模式）和NAT（网络地址转换模式）

（1）bridged（桥接模式）（默认）
VMware虚拟出来的操作系统就像是局域网中的一台独立的主机。
需要手动配置IP、子网掩码
虚拟机要与宿主机处于同一网段，才能和宿主机通信
应用场景：使用VMware为局域网新建一个虚拟服务器，为局域网用户提供网络服务
VMnet0：用于虚拟桥接网络下的虚拟交换机

（2）host-only（主机模式）
应用场景：真实环境和虚拟环境隔离，建立一个与外界隔离的内部网络，来提高内网的安全性
虚拟机之间可以通信
VMnet1提供DHCP服务
VMnet1：用于虚拟host-only网络下的虚拟交换机


（3）NAT（网络地址转换模式）
让虚拟系统借助NAT（网络地址转换）功能，通过宿主机器所在的网络来访问公网。
TCP/IP配置信息是由VMnet8（NAT）虚拟网络的DHCP服务器提供，无法进行手工修改，故无法与局域网内的真实主机通信。
优点：虚拟系统接入互联网非常简单，只需宿主机可以访问互联网
VMnet8：用于虚拟NAT网络下的虚拟交换机

VMware Network Adepter VMnet1：Host用于与Host-Only虚拟网络进行网络的虚拟网卡
VMware Network Adepter VMnet8：Host用于与NAT虚拟网络进行网络的虚拟网卡








