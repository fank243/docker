# jdk 镜像构建

Alibaba Dragonwell8 下载地址：https://github.com/alibaba/dragonwell8/wiki/%E4%B8%8B%E8%BD%BD%E9%95%9C%E5%83%8F(Mirrors-for-download)

## 构建步骤

请提前使用`rm-jdk.sh`文件清理jdk非必要文件后，重新压缩成.tar.gz文件

1. 拷贝jdk**.tar.gz文件到jdk目录下面

2. 修改`Dockerfile`文件中的`JAVA_GZ`和`JAVA_HOME`参数项

```bash
JAVA_GZ=jdk压缩文件名称
JAVA_HOME=解压缩后目录名称
```

3. 构建镜像

```bash
docker build -t fank243/dragonwell:1.8.0_282 .
```

4. 推送镜像到hub.docker.com

```bash
docker login

docker push fank243/dragonwell:1.8.0_282
```

## glic 下载地址

链接: https://pan.baidu.com/s/1Y9nZijnwJKwNOMIfhPneTA  密码: 9np6

