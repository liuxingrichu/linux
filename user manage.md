（1）添加用户
# useradd username

（2）删除用户
# userdel [-r] username
注：‘-r’ 选项的作用只有一个，就是删除账户的时候连带账户的家目录一起删除。

（3）修改用户密码
# passwd username

（4）修改root用户密码
# passwd

【5】查看主机名
$hostname

【6】无密码登陆
$ssh-keygen
$ssh-copy-id "-p52113 root@10.0.0.31"
$ssh-copy-id "root@10.0.0.31"


【8】关机
#shutdown -h now
#poweroff

【9】重启
#reboot

【10】查看系统
# cat /etc/centos-release
# uname -a



