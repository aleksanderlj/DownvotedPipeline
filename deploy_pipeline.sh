#!/bin/bash
useradd -u 1201 -G docker jenkins

mkdir /captain
mkdir /etc/prometheus
mkdir /var/jenkins_home
chown -R jenkins /var/jenkins_home
cp ./prometheus.yml /etc/prometheus/prometheus.yml
cp ./caprover-backup.tar /captain/backup.tar
tar -xzvf jenkins-backup.tar -C /var/jenkins_home

docker-compose up