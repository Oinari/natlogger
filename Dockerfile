FROM oraclelinux:7-slim

RUN yum install -y rsyslog && \
    yum clean all && \
    rm -rf /var/cache/yum

