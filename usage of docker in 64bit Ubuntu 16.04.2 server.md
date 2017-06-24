
（1）信息查询

(a)查版本
# docker -v

(b)docker的版本详细信息，分客户端和服务器
# docker version

(c)启动docker服务器
# service docker start

(d)docker守护进程状态、启动和停止
# service docker status
# service docker start
# service docker stop

(e)查看docker环境的信息
# docker info

(f)看到本地镜像
# docker images

(g)查看镜像的详细信息
# docker inspect image_name

(h)查看dokcer主机上已经创建的容器
# docker ps -a -q
-a表示列出所有容器（包括停止运行的容器），否则只会列出运行中的容器。 
-q表示只返回容器ID信息，其它容器信息（如状态、对应的镜像等）不显示。



（2）容器操作
(a)创建交互式容器
# docker run -i -t ubuntu /bin/bash
其中-i -t 表示创建一个提供交互式shell的容器。
ubuntu是镜像名，如果本地不存在，回到仓库中下载。
/bin/bash 是指定容器创建后立即执行的命令。
注意:每个容器都有一个唯一的ID，作为容器的标识。每个容器也有个唯一的名称，在用docker run命令创建时可以通过 
--name 名称 来指定，如果不指定，系统会自动产生一个名称。
如： docker run --name  mycontainer   -i -t ubuntu /bin/bash
对于交互式容器，当退出shell后，容器会关闭。 

(b)启动/停止容器
如果一个容器已经停止，可以执行如下docker start命令重新启动容器，参数可以是容器的ID 或容器的名称。
# docker start 73f644372a06
# docker restart 73f644372a06
# docker stop 73f644372a06
执行后返回容器的ID
注意，如果指定的容器已经处于启动状态，上述命令只是返回容器ID，不会重新启动容器。
如果要停止一个运行的容器，可以用 docker stop命令，kill命令也可停止容器，但这命令时强制立即停止容器。
# docker kill 93405d85f28a

(c)附着到交互式容器上
当重新启动容器时，会沿用创建容器（docker run）命令时指定的参数来运行。如果创建容器时，指定了shell。
重启容器时，可以用 docker attach命令附着到容器上，当执行docker attach命令时（可能需要敲下回车键），就回到了容器的bash提示符，
这时就已经相当于在容器内部了的shell操作了。如果操作过程中，退出了shell。容器也会随之停止。
所以这种容器一般是完成特定任务的，不适合运行服务程序。
# docker attach 73f644372a06

(d)创建守护式容器
这种容器指容器可以长期一直运行，没有交互式会话，非常适合容器中运行后台应用程序和服务（如数据库服务、web服务器等）。
# docker run --name mydaemon -d ubuntu /bin/sh -c "while true;do echo hello world;sleep 1;done"
上述语句利用-d标识创建了一个守护式容器，该容器启动了一个shell，循环打印一个信息，保证shell不退出。

(e)与守护式容器交互
可以通过docker exec命令在容器内部额外启动新进程。
# docker exec -t -i mydaemon /bin/bash
则会出现一个shell会话（容器内的，不是主机的），这样就可以和容器进行交互了，可以完成自己想要的操作。

(f)获取容器的日志信息
# docker logs 93405d85f28a

(g)查看容器更多的信息
# docker inspect 93405d85f28a

(h)查看容器内当前运行的进程信息
# docker top  93405d85f28a

(i)容器内部启动新的进程
# docker exec -it 73f644372a06 /bin/bash
上面命令表示在容器内打开一个shell交互式会话，参数 -i -t 是让这个shell能背主机捕捉到，可以在主机上操作该shell。
通过这个命令，就可以对容器进行相关的操作了，如进行容器的配置、应用程序的配置等。
注意：这个方式和attach不同。attach绑定的shell退出后容器会退出。这种方式不会。

(j)删除容器
命令：docker rm ID/NAME
# docker rm 18ee10d480e7
注意，运行中的容器是无法被删除的。
注意：在利用docker run创建容器时，可以加上标识 --rm，会在容器运行完毕后，自动删除容器，相当于创建的是一个一次性容器
# docker run -it --rm ubuntu /bin/sh

（k）查看容器的内容改变信息
创建一个容器，会在容器的对应的镜像上增加一个可写层，镜像部分是只读的。通过 diff命令可以看出改变的信息。
# docker diff 73f644372a06
说明：每行代表一个变动的文件或目录。其中 A 表示新增、C表示被修改、{D表示被删除}

（l）批量删除已停止容器
# docker rm `docker ps -a -q`

(m)创建容器
上面的介绍都是用 docker run 创建容器，并在创建成功后立即启动该容器。
还有另外一个docker create命令，该命令使用格式同run命令，但它只创建容器，不会立即启动。要想运行容器，需要单独再执行启动命令。
需要注意的是，使用docker create创建守护容器时，不能带-d标识符。
# docker create hello-world

(n)重命名容器
每个一个容器除了ID外，都有一个name（可以在创建时指定，也可以不指定，由系统自动分配）。
当容器创建后，也可以通过rename命令给容器重命名。重命名时，容器处于运行或停止状态都允许修改。
语法格式： docker rename oldname newname



 后台运行容器，容器中运行镜像httpd，并将容器80端口映射到host的80端口
 可通过http://[your ubuntu host IP]确认
# docker run -d -p 80:80 httpd

从远处下载镜像到本地
# docker pull ubuntu


（II）问题定位
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

