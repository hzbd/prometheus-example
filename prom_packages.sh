#!/bin/bash

URLS="https://github.com/prometheus/prometheus/releases/download/v2.34.0/prometheus-2.34.0.linux-amd64.tar.gz \
https://github.com/prometheus/alertmanager/releases/download/v0.24.0/alertmanager-0.24.0.linux-amd64.tar.gz \
https://github.com/prometheus/blackbox_exporter/releases/download/v0.20.0/blackbox_exporter-0.20.0.linux-amd64.tar.gz \
https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz \
https://github.com/prometheus/pushgateway/releases/download/v1.4.2/pushgateway-1.4.2.linux-amd64.tar.gz"

DOWNLOAD="/tmp/monitor-packages"
WORKSPACE="/data/monitor/"

mkdir -pv $DOWNLOAD $WORKSPACE

for url in $URLS; do
    echo "Downloading url: $url";
    filename=`echo "${url##*/}"`
    wget -c $url -P $DOWNLOAD/$filename
    tar xf $DOWNLOAD/$filename -C $WORKSPACE
done

ls -al $WORKSPACE
