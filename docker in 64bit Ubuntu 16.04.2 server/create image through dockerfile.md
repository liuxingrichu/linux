利用dockerfile创建镜像介绍（生成简单web服务器镜像）

（1）创建Dockerfile文件
# touch Dockerfile
------------------------------------------------------
# version 0.0.1
FROM ubuntu
MAINTAINER TOM "tom@test.com"
RUN apt-get update
RUN apt-get install -y vim
RUN echo 'hello, I am a web image' > /home/myweb.txt
------------------------------------------------------
注：当前编译环境中，不要存放无关文件
#表示注释
MAINTAINER 后面写创建用户和联系方式，也可不写
RUN 写要执行的命令

（2）构建镜像
# docker build -t="tom/myweb" .
注：.表示当前目录

（3）查看镜像
# docker images

（4）查看新构建镜像的构建历史
# docker history tom/myweb

（5）运行容器
# docker run -it tom/myweb 

（6）检测容器新功能
发现支持vim功能和文件myweb.txt存在
