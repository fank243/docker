FROM alpine:latest

ARG JAVA_GZ=j2sdk-image.tar.gz
ARG JAVA_VERSION=j2sdk-image
ARG JAVA_LOCAL=/usr/local/java
ARG JAVA_HOME=/usr/local/java/${JAVA_VERSION}

RUN mkdir -p ${JAVA_LOCAL}

# 添加JDK到容器中并解压缩
ADD ${JAVA_GZ} ${JAVA_LOCAL}

COPY glibc-2.30-r0.apk /glibc-2.30-r0.apk
COPY glibc-bin-2.30-r0.apk /glibc-bin-2.30-r0.apk
COPY glibc-i18n-2.30-r0.apk /glibc-i18n-2.30-r0.apk

# 复制arthas-boot.jar
COPY arthas-boot.jar /usr/local/java/arthas-boot.jar

# 更换国内源
RUN echo http://mirrors.aliyun.com/alpine/v3.7/main > /etc/apk/repositories \
&& echo http://mirrors.aliyun.com/alpine/v3.7/community >> /etc/apk/repositories \
&& apk upgrade --update-cache

# 安装vims
RUN apk add bash vim

# 安装字体
RUN apk add --update ttf-dejavu fontconfig

# 安装时区
RUN apk add --no-cache tzdata \
&& ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# 创建应用目录
RUN mkdir -p /app/logs

RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub \
    && apk add glibc-2.30-r0.apk glibc-bin-2.30-r0.apk glibc-i18n-2.30-r0.apk \
    && sleep 2 \
    && rm -rf /tmp/* /var/cache/apk/* /glibc-*.apk ${JAVA_GZ} \
    && /usr/glibc-compat/bin/localedef -i en_US -f UTF-8 en_US.UTF-8

ENV JAVA_HOME=${JAVA_HOME}
ENV PATH $PATH:${JAVA_HOME}/bin
ENV LANG en_US.UTF8

CMD ["java","-version"]
