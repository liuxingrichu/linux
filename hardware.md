��1��CPU
lscpu	�鿴����cpu��ͳ����Ϣ
cat /proc/cupinfo	�鿴����cpu����ϸ��Ϣ
getconf LONG_BIT	�鿴��ǰCPU������32/64bitģʽ

��2���ڴ�
free -g	�鿴�ڴ�
cat /proc/meminfo	�鿴�ڴ���Ϣ

��3��Ӳ�̺ͷ���
lsblk	�鿴Ӳ�̺ͷ����ֲ�
fdisk -l	��Ӳ�̺ͷ�������ϸ��Ϣ
lsscsi	�г���Ӳ�̺͹����� scsi/sata�豸����Ϣ
df �г���ͬ�����ĸ�Ҫ��Ϣ�����ص㡢���õĺͿ��õĿռ�
dmesg	��ѯӲ����boot��Ϣ
mount	��ѯ������Ϣ

��4������
ifconfig -a	�鿴ϵͳ����������ӿ�
ethtool eth0	�鿴ĳ������ӿڵ���ϸ��Ϣ
dmesg | grep -i eth	�鿴������Ϣ 

��5���ж�
cat /proc/interrupts	�鿴���豸���ж�����(IRQ)

��6���ں�
uname -a

��7��Ӳ���豸����
mount /dev/sdb	/mnt/test/

��8��ϵͳ����������
ϵͳ�̶�ӦΪ/
������mount��df -h��lsblk

��9��ͼ�ν��濨���������
# killall -9 gnome-shell
