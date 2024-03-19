FROM jenkins/jenkins:lts
USER root
RUN apt-get update \
    && apt-get upgrade -y
RUN apt-get install ansible -y
USER jenkins