��1������׼��
jdk������ַ
http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
ѡ��jdk-8u131-linux-x64.tar.gz

tomcat������ַ
http://tomcat.apache.org/
ѡ��
http://mirrors.hust.edu.cn/apache/tomcat/tomcat-7/v7.0.78/bin/apache-tomcat-7.0.78.zip

��2����װjdk
# tar -zxvf jdk-8u131-linux-i586.gz -C /usr/local/
# ln -s /usr/local/jdk1.8.0_131 /usr/bin/jdk

����java��������
# vim /etc/profile

JAVA_HOME=/usr/local/jdk1.8.0_131
JAVA_BIN=/usr/local/jdk1.8.0_131/bin
PATH=$PATH:$JAVA_BIN
CLASSPATH=$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export JAVA_HOME JAVA_BIN PATH CLASSPATH

# source /etc/profile

����java���������Ƿ���Ч
# java -version

��3����װtomcat
# apt-get install unzip
# unzip apache-tomcat-7.0.78.zip
# mv apache-tomcat-7.0.78 /usr/local/
# ln -s /usr/local/apache-tomcat-7.0.78 /usr/local/tomcat
# whereis tomcat

# cd /usr/local/apache-tomcat-7.0.78/bin/
# vim catalina.sh
CATALINA_HOME=/usr/local/apache-tomcat-7.0.78/
# chmod +x *.sh

����tomcat
# . /usr/local/apache-tomcat-7.0.78/bin/catalina.sh start

����tomcat
http://localhost:8080/��������Ǳ������������Ӧ��ip��ַ��

�鿴tomcat������־
# cd /usr/local/apache-tomcat-7.0.78/logs
# tail -f catalina.out