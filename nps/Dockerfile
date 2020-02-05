FROM alpine:latest
MAINTAINER FanWeiJie <fank243@163.com>

WORKDIR /
ENV NPS_VERSION 0.25.3

RUN set -x && \
	wget --no-check-certificate https://github.com/cnlh/nps/releases/download/v${NPS_VERSION}/linux_amd64_server.tar.gz && \
	mkdir \nps && \
	tar xzf linux_amd64_server.tar.gz -C /nps && \
	cd /nps && \
	cd .. && \
	rm -rf *.tar.gz

VOLUME /nps/conf

CMD /nps/nps