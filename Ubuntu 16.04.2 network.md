
��1���鿴������Ϣ
# ifconfig -a

��2����������
vim /etc/network/interfaces 

auto ens33
iface ens33 inet static
address 192.168.*.*
netmask 255.255.255.0
gateway 192.168.*.1

��3����������
# /etc/init.d/networking restart

��4������DNS

# vim /etc/resolvconf/resolv.conf.d/base
nameserver 8.8.8.8
nameserver 8.8.4.4
nameserver 192.168.*.1

��5��ˢ�������ļ�
# resolvconf -u

��6���������
# ping www.baidu.com