��1���鿴IP��Ϣ
# ifconfig

��2���鿴�����豸
# ifconfig -a

��3������centos����

�ο�https://www.apelearn.com/study_v2/chapter6.html#linuxip

��ע1������������Ϊ�Ž�ģʽ���Զ���
��ע2��dhclient������Ч��ǰ���ǡ��༭-����������༭������ʹ�ñ���DHCP����IP��ַ������������D��Ϊѡ��״̬��

 vi /etc/sysconfig/network-scripts/ifcfg-eth0

IPADDR=10.72.137.85
NETMASK=255.255.255.0
GATEWAY=10.72.137.1
ONBOOT=yes
BOOTPROTO=none

��4������Bringing up interface eth0:  Device eth0 does not seem to be present,delaying initialization.                    [FAILED]

����취��

�ο�http://www.linuxidc.com/Linux/2012-12/76248.htm

��ע��dhclient���ɵ�eth��num��һ��


���ȣ���/etc/udev/rules.d/70-persistent-net.rules����������������ʾ��
��¼�£�eth1������mac��ַ00:0c:29:50:bd:17

����������/etc/sysconfig/network-scripts/ifcfg-eth0

# vi /etc/sysconfig/network-scripts/ifcfg-eth0

�� DEVICE="eth0"  �ĳ�  DEVICE="eth1"  ,
�� HWADDR="00:0c:29:8f:89:97" �ĳ������mac��ַ  HWADDR="00:0c:29:50:bd:17"

�����������

#service network restart
����

#/etc/init.d/network restart

�����ˡ�


