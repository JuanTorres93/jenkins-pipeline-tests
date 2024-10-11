
FROM jenkins/jenkins

ARG DOCKER_GID=955

USER root

RUN apt-get update && apt-get -y install sudo docker docker-compose

RUN groupdel docker

RUN groupadd -g ${DOCKER_GID} docker

RUN usermod -aG docker jenkins

USER jenkins
