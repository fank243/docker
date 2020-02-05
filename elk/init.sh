#! /bin/bash

# 授权
chmod 777 elasticsearch/data
chmod 777 elasticsearch/conf
chmod 777 logstash/data
chmod 777 kibana/data

# [1]: max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]
vim /etc/sysctl.conf
vm.max_map_count=262144

# [1]: the default discovery settings are unsuitable for production use; at least one of [discovery.seed_hosts, discovery.seed_providers, cluster.initial_master_nodes] must be configured
vim elasticsearch/conf/elasticserach.yml
discovery.seed_hosts = ["127.0.0.1", "[::1]"]
cluster.initial_master_nodes = ["node-1"]