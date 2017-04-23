
（1）CentOS通过yum安装中文语言包
# yum groupinstall "Chinese Support"

（2）配置文件
# vim /etc/sysconfig/i18n

（3）修改配置文件（全部用户都生效）
将
LANG="en_US.UTF-8"
修改为
LANG="zh_CN.UTF-8"


（4）重启系统
# shutdown -r now
