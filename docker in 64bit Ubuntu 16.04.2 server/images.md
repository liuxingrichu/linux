镜像操作

（1）查看本地镜像
# docker images

（2）镜像中心
docker hub中有两种类型的镜像：用户仓库（user repository）和顶层仓库（top-level  repository）。
用户仓库的镜像是有docker用户创建的。顶层仓库是有docker公司内部管理的。
用户仓库的命名由用户名和仓库名两部分组成（中间用/分隔）；而顶层仓库只有仓库名，如ubuntu仓库。
镜像名称的标准格式是：用户名/仓库名:Tag名，对于顶层的则没有用户名，如果省略tag名，默认为latest.

（3）在docker hub中心查找仓库
通过docker search命令可以查找docker hub上所有公共的可用仓库。
可以带一个字符串参数（支持通配），用于查找满足命名的仓库。
# docker search httpd
返回的每条记录代表一个镜像。包含5个字段信息：
1）Name：镜像的仓库名。可以看出顶层仓库只有第一个镜像是。其它的都是用户仓库。
2）Description：仓库的描述信息
3）Stars：用户评价，反映一个仓库受欢迎的程度
4）Offical：是否官方，即是否是顶层仓库。可以看出，只有第一个镜像是顶层仓库。
5）Automated：表示这个镜像是由docker hub自动构建的。

（4）下载镜像
通过docker run方法是创建容器，如果指定的镜像在本机不存在，则会先去下载镜像。
可以通过docker pull命令只下载镜像，不创建容器。
命令： docker pull  [用户名/]仓库名[:TAG]
含义： 如果只指定仓库名，会下载该仓库下的所有镜像。如果还指定了TAG值，则会下载指定的镜像。
对于dokcer run命令，只指定仓库名，不指定tag时，默认下载的是 latest标识的镜像。
镜像下载后，就可以通过docker run命令创建相应的容器了。
# docker pull mysql

（5）镜像的复制
一个镜像是属于一个仓库，一个仓库中有多个镜像，大家靠tag来区分。
在某些场景下，可能需要把一个已有的镜像 加入（也就是复制）到别的仓库中。这时可以用tag命令。
具体的语法格式是：
docker tag [OPTIONS] orignIMAGE[:TAG] [REGISTRYHOST/][USERNAME/]newNAME[:TAG]
比如当创建一个镜像，命名不适合（仓库名和TAg标识），这样相当于改个名，但实际是拷贝一份。
# docker tag hello-world hello

