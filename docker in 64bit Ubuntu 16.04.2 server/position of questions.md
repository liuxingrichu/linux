问题定位

《问题定位1》
【运行】# docker run -it nginx:latest /bin/bash
【报错】panic: standard_init_linux.go:178: exec user process caused "exec format error" [recovered]
【分析】
# uname -a
Linux ubuntu 4.4.0-62-generic #83-Ubuntu SMP Wed Jan 18 14:09:55 UTC 2017 i686 i686 i686 GNU/Linux
【原因】
You're running a 32-bit host, which is largely unsupported by Docker. You definitely won't be able to run 64 bit images such as the stock ubuntu.
【方法】安装64-bit主机
【参考资料】
https://stackoverflow.com/questions/29072605/can-not-start-docker-on-lubuntu-cannot-start-container-exec-format-error


《问题定位2》
【运行】# docker pull ubuntu
【错误】
Error response from daemon: Get https://registry-1.docker.io/v2/library/ubuntu/manifests/latest: dial tcp 52.86.141.88:443: i/o timeout
【原因】Docker Hub服务器在国外
【方法】
首先，在DaoCloud上注册账号，也可以用github账号或微信账号登陆
网址 http://dashboard.daocloud.io/build-flows上点击“加速器”图标
其次，将生成的命令，在Linux设备上运行
最后，重启Docker deamon
# systemctl restart docker.service


《问题定位3》
【运行】# docker search ubuntu
【错误】
Error response from daemon: Get https://index.docker.io/v1/search?q=ubuntu&n=25: dial tcp 34.200.194.233:443: i/o timeout
【原因】docker主机是通过代理才能连接外网
【方法】
# systemctl start docker
【参看网址】
https://stackoverflow.com/questions/30390044/solve-with-saltstack-initctl-unable-to-connect-to-upstart-failed-to-connect
