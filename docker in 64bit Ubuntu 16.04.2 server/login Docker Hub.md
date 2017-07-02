
（0）在Docker Hub注册账号
https://hub.docker.com/

（1）账号登陆
# docker login -u liuxingrichu
输入密码

（2）按照规范，修改镜像
完整格式：[usrname]/xxx:tag
# docker tag hello-world liuxingrichu/hello-world:v1.0

（3）上传镜像
# docker push liuxingrichu/hello-world:v1.0

（4）检测镜像
登陆下面网址，进行查看
https://hub.docker.com/

（5）下载镜像
# docker pull liuxingrichu/hello-world:v1.0
