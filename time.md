linuxϵͳ��date�����������

��ȡ������Ϣ
	#date --help
	
���ڸ�ʽ��
	#date "+%Y-%m-%d %H:%M:%S.%N"

��ȡ��ǰʱ��
	#date
	#date -d today
	#date -d now

��ȡǰ��ʱ��
	#date -d yestoday

��ȡ����ʱ��
	#date -d tomorrow

ʱ������
	�޸�ϵͳʱ��
	#date -s 07/13/2016
	#date -s 11:12:00
	# date -s '2017-6-1 19:09'
	ǿ�ư�ϵͳʱ��д��CMOS
	#clock -w

ʱ������
	# tzselect
	
Ӳ��ʱ�ӣ�ʱ��оƬ��
	Ӳ��ʱ����ָ�������ϵ�ʱ���豸��Ҳ����ͨ������BIOS�����趨��ʱ�ӡ�
	# hwclock 		�鿴��ǰʱ��	
	# hwclock -r	�鿴��ǰʱ��
	# hwclock -w	����Ӳ��ʱ��
	# hwclock -h	��ȡ������Ϣ
	
UTC��CST	
	����Э��ʱ��(Universal Time Coordinated,UTC)	
	CST China Standard Time UTC+8:00 �й��غ�ʱ��(����ʱ��)
	UTCʱ���Ϊ��㣬ʱ��ȱ���ʱ�����Сʱ���� CST - UTC = 8
	
	
	
