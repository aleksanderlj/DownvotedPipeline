#!/bin/bash

sudo useradd -u 1201 -G docker,$USER jenkins

sudo mkdir /captain
sudo mkdir /etc/prometheus
sudo mkdir /var/jenkins_home

sudo chown -R jenkins /var/jenkins_home
sudo chmod 760 ~/.docker
sudo chmod 660 ~/.docker/config.json

sudo cp ./prometheus.yml /etc/prometheus/prometheus.yml
sudo cp ./caprover-backup.tar /captain/backup.tar
sudo tar -xzvf jenkins-backup.tar -C /var/jenkins_home

docker-compose up -d