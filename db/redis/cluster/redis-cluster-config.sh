for port in `seq 6370 6375`; do \
  mkdir -p /home/data/redis/${port}/conf \
  && PORT=${port} envsubst < ./redis-cluster.tmpl > /home/data/redis/${port}/conf/redis.conf \
  && mkdir -p /home/data/redis/${port}/data; \
done
