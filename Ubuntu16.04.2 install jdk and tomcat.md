（1）资料准备
jdk官网地址
http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
选择jdk-8u131-linux-x64.tar.gz

tomcat官网地址
http://tomcat.apache.org/
选择
http://mirrors.hust.edu.cn/apache/tomcat/tomcat-7/v7.0.78/bin/apache-tomcat-7.0.78.zip

（2）安装jdk
# tar -zxvf jdk-8u131-linux-i586.gz -C /usr/local/
# ln -s /usr/local/jdk1.8.0_131 /usr/bin/jdk

配置java环境变量
# vim /etc/profile

JAVA_HOME=/usr/local/jdk1.8.0_131
JAVA_BIN=/usr/local/jdk1.8.0_131/bin
PATH=$PATH:$JAVA_BIN
CLASSPATH=$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export JAVA_HOME JAVA_BIN PATH CLASSPATH

# source /etc/profile

检验java环境变量是否生效
# java -version

（3）安装tomcat
# apt-get install unzip
# unzip apache-tomcat-7.0.78.zip
# mv apache-tomcat-7.0.78 /usr/local/
# ln -s /usr/local/apache-tomcat-7.0.78 /usr/local/tomcat
# whereis tomcat

# cd /usr/local/apache-tomcat-7.0.78/bin/
# vim catalina.sh
CATALINA_HOME=/usr/local/apache-tomcat-7.0.78/
# chmod +x *.sh

启动tomcat
# . /usr/local/apache-tomcat-7.0.78/bin/catalina.sh start

检验tomcat
http://localhost:8080/（如果不是本机，则输入对应的ip地址）

查看tomcat运行日志
# cd /usr/local/apache-tomcat-7.0.78/logs
# tail -f catalina.out