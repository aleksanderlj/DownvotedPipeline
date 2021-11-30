FROM jenkins/jenkins:latest-jdk8

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

COPY jenkins_plugins.txt /usr/share/jenkins/ref/plugins.txt

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

USER root

RUN apt update
RUN apt -y install nodejs npm maven docker docker-compose
RUN npm install -g caprover
RUN usermod -aG docker jenkins

USER jenkins



EXPOSE 8080