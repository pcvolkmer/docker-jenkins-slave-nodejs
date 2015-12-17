# This Dockerfile is used to build an image containing an nodejs 4.2 jenkins slave
FROM node:4.2
MAINTAINER Paul-Christian Volkmer <mail@pcvolkmer.de>

# Add backports
RUN echo "deb http://http.debian.net/debian jessie-backports main" >> /etc/apt/sources.list

# Update packages
RUN apt-get update && apt-get -y upgrade

# Install java
RUN apt-get -t jessie-backports install -y openjdk-8-jdk

# Install Git and OpenSSH
RUN apt-get install -y git openssh-server && mkdir /var/run/sshd

# Add user "jenkins" with password "jenkins"
RUN adduser --quiet jenkins && echo "jenkins:jenkins" | chpasswd

ENV CI=true
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
