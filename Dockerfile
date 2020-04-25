FROM oraclelinux:7-slim

RUN yum install -y rsyslog && \
    yum clean all && \
    rm -rf /var/cache/yum

ADD ./rsyslog.conf /etc/rsyslog.conf
ADD ./rsyslog.d /etc/rsyslog.d

RUN mkdir -p /usr/data

EXPOSE 514/tcp 514/udp

CMD ["/usr/sbin/rsyslogd", "-n"]
