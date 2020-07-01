### docker run --rm
在容器启动时设置--rm选项，这样在容器退出时就能够自动清理容器内部的文件系统
`docker run --rm studentService` 等价于 `docker run --rm=true studentService`

### docker run --name
在容器启动时设置--rm选项，这样在容器退出时就能够自动清理容器内部的文件系统

### docker run sh -c "ls &&  ls"
同时执行多个命令

### docker run --add-host 
使用该参数可以配置多个host

### docker run --hostname 
指定hostname;

### docker run --net 
指定网络模式

### docker run --ip
指定IP

### docker run --add-host 
指定往/etc/hosts添加的host

### docker run -v=[]
宿主机绑定: -v<host>:<container>:[rw|ro]
绑定挂载目录

### docker run -t 
伪终端