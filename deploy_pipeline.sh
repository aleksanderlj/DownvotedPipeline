#!/bin/bash
mkdir /captain
mkdir /etc/prometheus
cp ./prometheus.yml /etc/prometheus/prometheus.yml
cp ./caprover-backup.tar /captain/backup.tar
docker-compose up