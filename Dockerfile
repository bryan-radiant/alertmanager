FROM       golang:latest
MAINTAINER Prometheus Team <prometheus-developers@googlegroups.com>

ADD alertmanager /usr/src/prometheus/alertmanager
ADD alertmanager.conf /usr/src/prometheus/alertmanager.conf

WORKDIR    /alertmanager
ENTRYPOINT /usr/src/prometheus/alertmanager -config.file /usr/src/prometheus/alertmanager.conf -log_dir /opt/logs/alertmanager -silences.file /usr/src/prometheus/silences.json 
EXPOSE     9093:9093

