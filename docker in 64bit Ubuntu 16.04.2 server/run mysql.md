利用docker hub上的mysql镜像创建mysql容器

（1）下载镜像
# docker pull mysql

（2）运行容器
# docker run --name mysqldb -e MYSQL_ROOT_PASSWORD=root -d mysql

（3）主机安装mysql客户端
# apt-get install mysql-client

（4）从主机上利用mysql客户端测试能否连接到容器中的mysql服务
# docker exec -it mysqldb mysql -uroot -p

（5）查看mysql服务日志信息
# docker exec -it mysqldb bash
日志存放目录：/var/log/mysql/

（6）查看容器的配置信息
# docker inspect mysqldb

【参考网址】
https://hub.docker.com/r/mysql/mysql-server/



