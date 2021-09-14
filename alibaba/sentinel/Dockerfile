FROM fank243/oraclejdk:1.8.0_291

WORKDIR /app

COPY sentinel-dashboard-1.8.2.jar app.jar

RUN chmod -R +x app.jar

EXPOSE 8858

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]