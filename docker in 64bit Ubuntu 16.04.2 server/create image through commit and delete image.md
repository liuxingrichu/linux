
（I）创建镜像有两种方法，一是用commit命令，二是用dockerfile方法

（1）启动容器
# docker run --name test1 -it ubuntu /bin/bash

（2）在容器中修改内容
# echo hello world >> test.txt

（3）退出容器
# exit

（4）查看容器修改信息
# docker diff test1 

（5）创建新镜像
# docker commit test1 test_image
这时就在本地创建了一个仓库名为test_image，tag值为默认为latest的镜像。
规范的镜像名应该为：
[username/]repositoryName[:tagName]
# docker commit test1 tom/test_image:1.0
如果没有tagName，则默认为latest。
注意：如果需要把该镜像提交到dokcer hub中心，则必须规范命名（必须是  用户名/仓库名，tag可以缺省），前面的用户名是在dokcer hub上注册的用户名。

（6）检验新镜像
# docker run -it tom/test_image:1.0 
发现text.txt文件存在

（II）删除本地镜像
格式：docker rmi  镜像名/ID
# docker rmi test_image

强力删除
# docker rmi -f  f65a16bda45e