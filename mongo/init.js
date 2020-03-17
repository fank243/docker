db.createUser({
    user: "graylog",
    pwd: "graylog",
    roles: [{
        role: "readWrite",
        db:"graylog"
    }]
});
