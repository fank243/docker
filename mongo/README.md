# Mongo

## 创建 graylog 库

1.进入容器

```bash
docker exec -it mongo bash
```

2.登录mongo

```bash
mongo -uroot -proot
```

3.创建graylog

```bash
use graylog

db.runoob.insert({"name":"测试"})

show dbs
```

4.创建graylog账户并授权可以访问graylog库

```bash
db.createUser({
    user: "graylog",
    pwd: "graylog",
    roles: [{
        role: "readWrite",
        db:"graylog"
    }]
});
```
