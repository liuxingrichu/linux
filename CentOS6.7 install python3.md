（1）安装开发依赖包
# yum -y groupinstall development
# yum -y install zlib-devel
或者
# yum install gcc

（2）安装python3.6
# wget https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tgz
# tar -zxvf Python-3.6.0.tgz
# cd Python-3.6.0
# ./configure --prefix=/usr/local/Python3.6.0
# make
# make install

（3）检测安装
# which python3
# whereis python3
# python3 -V
# find / -name python3
# file /usr/bin/python3
创建软链接
# ln -s /usr/local/Python3.6.0/bin/python3 /usr/bin/python3
删除软链接
# rm /usr/bin/python3

(4)源码安装pip3
# wget --no-check-certificate https://github.com/pypa/pip/archive/9.0.1.tar.gz
# tar -zvxf 9.0.1.tar.gz [-C pip-9.0.1]  # 指定目录
# cd pip-9.0.1
# python3 setup.py install# 使用 Python3 安装
# pip install --upgrade pip # 升级 pip
# ln -s /usr/local/Python3.6.0/bin/pip3 /usr/bin/pip3 #创建链接

(4)安装第三方软件包
# pip3 install paramiko