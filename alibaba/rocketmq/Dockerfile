FROM fank243/oraclejdk:1.8.0_291

VOLUME /tmp

ADD rocketmq-console-ng-*.jar rocketmq-console-ng.jar

RUN sh -c 'touch /rocketmq-console-ng.jar'

ENV JAVA_OPTS=""

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /rocketmq-console-ng.jar" ]