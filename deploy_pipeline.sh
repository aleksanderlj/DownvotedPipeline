#!/bin/bash
mkdir /captain
mkdir /etc/prometheus
mkdir /etc/jenkins_home
cp ./prometheus.yml /etc/prometheus/prometheus.yml
cp ./caprover-backup.tar /captain/backup.tar
chmod 777 /var/run/docker.sock
chmod -R 777 /etc/jenkins_home

docker-compose up