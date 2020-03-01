# ELK

## 安装顺序

安装顺序依此为：elasticserch > logstash > filebeat > kibana


## Elasticserch 疑难杂症

1. 如果首次构建容器，请先对elasticsearch中的conf、data授权，否则无法启动

```bash
chmod 777 /data/data/elasticsearch
chmod 777 elasticsearch/conf
```

2. 如果出现下述错误
```bash
# [1]: max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]
```

2.1 编辑/etc/sysctl.conf文件，在文件最下面追加如下参数
```bashs
vm.max_map_count=262144
```

3. 如果出现下述错误
```bash
# [1]: the default discovery settings are unsuitable for production use; at least one of [discovery.seed_hosts, discovery.seed_providers, cluster.initial_master_nodes] must be configured
```

3.1 编辑conf/elasticserach.yml文件，修改如下参数
```yml
discovery.seed_hosts = ["127.0.0.1", "[::1]"]
cluster.initial_master_nodes = ["node-1"]
```