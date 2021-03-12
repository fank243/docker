# alibaba nacos

1.4.0 以下版本连接MySQL只需要修改 `init.d/custom.properties`中的jdbc连接即可，不需要修改`env/*.env`文件

1.4.0 及以上版本取消docker-compose.yml文件中的custom.properties映射，直接修改env/*.env文件连接MySQL

针对多网卡服务器时，为了避免将docker容器ip地址注册到nacos控台中，可在env/*.env增加如下参数，制定服务器内网ip地址

```bash
NACOS_SERVER_IP=服务器内网IP地址
```
