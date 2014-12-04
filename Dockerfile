
FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get -y install curl zip openjdk-7-jre-headless \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN curl -SL "https://s3-us-west-1.amazonaws.com/lightbody-bmp/browsermob-proxy-2.0-beta-9-bin.zip" -o "/browsermob-proxy.zip" \
    && unzip -q /browsermob-proxy.zip \
    && rm -f /browsermob-proxy.zip

COPY start.sh /
RUN chmod +x /start.sh

EXPOSE 9090 9091
CMD ["/start.sh"]
