# This Dockerfile is used to build an image containing an Node.js 6.0 jenkins slave

FROM node:6.0
MAINTAINER Paul-Christian Volkmer <mail@pcvolkmer.de>

# Add backports
RUN echo "deb http://http.debian.net/debian jessie-backports main" >> /etc/apt/sources.list

# Install packages
RUN apt-get update && apt-get install -y git openssh-server && apt-get -t jessie-backports install -y openjdk-8-jdk

# Prepare container for ssh
RUN mkdir /var/run/sshd && adduser --quiet jenkins && echo "jenkins:jenkins" | chpasswd

ENV CI=true
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
