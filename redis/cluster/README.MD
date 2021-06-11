# Redis Cluster 搭建

redis-cluster 至少需要6个实例，即3个master节点，3个slave节点

执行 `docker-compse -f docker-compose-cluster.yml up -d` 前，需要先启动firewalld,构建redis容器成功后，需要关闭firwalld

```bash
# 关闭防火墙
systemctl stop firewalld

# 开启防火墙
systemctl start firewalld
```

容器启动成功后，执行下面命令让所有节点加入集群中，如果redis.conf文件配置了 `requirepass` 认证密码项，则需要添加 `-a` 选项，否则不需要添加

> 如果无法连接主机，请检查是否已关闭宿主机防火墙，否则请检查docker网络，必须新建docker网络，并且是bridge模式

```bash
docker exec -it redis6370 redis-cli --cluster create 192.168.8.120:6370 192.168.8.120:6371 192.168.8.120:6372 192.168.8.120:6373 192.168.8.120:6374 192.168.8.120:6375 --cluster-replicas 1 -a 123456
```
