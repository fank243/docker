FROM fank243/dragonwell:1.8.0_232

ARG SPRING_ACTIVE

WORKDIR /app

CMD java -Djava.security.egd=file:/dev/./urandom -Dfile.encoding=UTF8 -Duser.timezone=GMT+08 -Dloader.path=lib -jar app.jar --spring.profiles.active=${SPRING_ACTIVE}
