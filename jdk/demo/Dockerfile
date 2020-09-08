FROM fank243/dragonwell:1.8.0_262

# 构建参数，默认值：test
ARG prifiles=test

WORKDIR /app

CMD java -Djava.security.egd=file:/dev/./urandom -Dloader.path=lib -Dspring.profiles.active=${profiles} -jar app.jar
