# docker

1. 构建MySQL时，需要修改root登录密码参数 `- MYSQL_ROOT_PASSWORD=root`
2. 构建Redis时，需要修改 **redis.conf** 中 `requirepass` 参数，即访问密码
3. 构建ELK组件时，参考init.sh文件bai