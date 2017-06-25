（0）环境准备
Ubuntu官网镜像下载地址
https://www.ubuntu.com/download/alternative-downloads

注：镜像选择Ubuntu 16.04.2 Server (64-bit)，即ubuntu-16.04.2-server-amd64.iso
建议：镜像安装内存选择1G，大于512M奥

docker官网安装文档
https://docs.docker.com/engine/installation/

Ubuntu系统xshell连接
# apt-get install openssh-server

（1）安装docker
方法一：
# apt-get install docker.io

查看docker
# which docker
# service docker status
# docker version
$ sudo docker info

方法二：
(a)Install packages to allow apt to use a repository over HTTPS:
$ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
	
(b)Add Docker’s official GPG key:
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -	
Verify that the key fingerprint is 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88.
查看key
# apt-key fingerprint 0EBFCD88
（c）Use the following command to set up the stable repository. 
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

（d）Update the apt package index.   
# apt-get update  
 
（e）Install the latest version of Docker
# apt-get install docker-ce

（3）卸载docker
# apt-get purge docker-ce