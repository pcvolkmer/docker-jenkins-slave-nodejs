# This Dockerfile is used to build an image containing a node jenkins slave

FROM node:19

LABEL org.opencontainers.image.source=https://github.com/pcvolkmer/docker-jenkins-slave-nodejs
LABEL org.opencontainers.image.licenses=MIT
LABEL org.opencontainers.image.description="NodeJS image to use with Jenkins Docker Plugin"

# Upgrade and Install packages
RUN apt-get update && apt-get -y upgrade && apt-get install -y git openssh-server openjdk-17-jdk

# Add user and group for jenkins
RUN groupadd -g 10000 jenkins
RUN useradd -m -u 10000 -g 10000 jenkins
RUN echo "jenkins:jenkins" | chpasswd

# Prepare container for ssh
RUN mkdir /var/run/sshd

ENV CI=true
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
