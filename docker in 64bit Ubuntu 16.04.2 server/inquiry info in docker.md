信息查询

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