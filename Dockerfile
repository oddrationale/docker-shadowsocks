# shadowsocks
#
# VERSION 0.0.1

FROM ubuntu:14.04
MAINTAINER Dariel Dato-on <oddrationale@gmail.com>

RUN apt-get update && \
    apt-get install -y python-pip python-gevent python-m2crypto
RUN pip install shadowsocks==1.4.4

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/ssserver"]
