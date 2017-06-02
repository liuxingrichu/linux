Linux 拷贝命令

《dd命令》
用法：dd if=源文件或目录 of=目标文件或目录 count=拷贝块数 bs=块大小
举例：dd if=/home/book of=image count=2 bs=2G


《scp命令》
应用场景：linux设备间文件或目录拷贝
用法：scp [参数] 源文件或目录 远程用户名@远程设备IP：目录
参数：
（1）-r	递归复制整个目录，包括文件夹
（2）-q	不显示传输进度条
（3）-p 保留源文件的修改时间、访问时间和访问权限
（4）-v 详细方式显示输出
举例：scp -rpq test.txt root@192.168.0.2:/home/test/

《cp命令》
用法：cp [参数] 源文件或目录 目标文件或目录
参数：
（1）-r	递归复制整个目录，包括文件夹
（2）-v 详细方式显示输出
举例：cp -r test test1

《rsync命令》
yum instal rsync	安装工具
应用场景：设备内拷贝，并显示进程条
用法：rsync 源文件或目录 目标文件或目录 --progress
举例： rsync  image image3 --progress
