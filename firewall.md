
centos����ǽ����

1 �رշ���ǽ-----service iptables stop 
2 ��������ǽ-----service iptables start 
3 ��������ǽ-----service iptables restart 
4 �鿴����ǽ״̬--service iptables status 
5 ���ùرշ���ǽ--chkconfig iptables off 
6 ���ùرպ�����--chkconfig iptables on

====================================================================

suse����ǽ����

1. ��� SuSE����ǽ�Ƿ�����Ϊ����
   ##chkconfig --list | grep firewall

2. ���ùرշ���ǽ����
   #chkconfig SuSEfirewall2_init off
   #chkconfig SuSEfirewall2_setup off

3. ��ʱ�رշ���ǽ����
   #rcSuSEfirewall2 stop

Ҳ��ͨ��yast-��system-��xx disabled

====================================================================

����1��IP��pingͨ����xshell����ʧ��

�������һ���رշ���ǽ
�����������
	#vim /etc/sysconfig/iptables
	�����������

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