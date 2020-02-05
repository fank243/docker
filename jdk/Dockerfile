FROM alpine:latest

ARG JAVA_GZ=jdk1.8.0_202.tar.gz
ARG JAVA_VERSION=1.8.0_202
ARG JAVA_LOCAL=/usr/local
ARG JAVA_BASE=${JAVA_LOCAL}/java
ARG JAVA_HOME=${JAVA_BASE}/jdk${JAVA_VERSION}

RUN mkdir -p ${JAVA_BASE}

# 添加JDK到容器中并解压缩
ADD ${JAVA_GZ} ${JAVA_BASE}

COPY glibc-2.30-r0.apk /glibc-2.30-r0.apk
COPY glibc-bin-2.30-r0.apk /glibc-bin-2.30-r0.apk
COPY glibc-i18n-2.30-r0.apk /glibc-i18n-2.30-r0.apk

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
RUN mkdir -p /app/config && mkdir -p /app/logs && mkdir -p /app/lib

RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub \
    && apk add glibc-2.30-r0.apk glibc-bin-2.30-r0.apk glibc-i18n-2.30-r0.apk \
    && sleep 2 \
    && rm -rf /tmp/* /var/cache/apk/* /glibc-*.apk ${JAVA_GZ} \
    && /usr/glibc-compat/bin/localedef -i en_US -f UTF-8 en_US.UTF-8

ENV JAVA_HOME=${JAVA_HOME}
ENV PATH $PATH:${JAVA_HOME}/bin
ENV LANG en_US.UTF8

CMD ["java","-version"]
