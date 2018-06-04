# This Dockerfile is used to build an image containing an node jenkins slave

FROM node:4.8.5
MAINTAINER Paul-Christian Volkmer <mail@pcvolkmer.de>

# Add backports
RUN echo "deb http://http.debian.net/debian jessie-backports main" >> /etc/apt/sources.list

# Upgrade and Install packages
RUN apt-get update && apt-get -y upgrade && apt-get install -y git openssh-server && apt-get -t jessie-backports install -y openjdk-8-jdk

# Add user and group for jenkins
RUN groupadd -g 10000 jenkins
RUN useradd -m -u 10000 -g 10000 jenkins
RUN echo "jenkins:jenkins" | chpasswd

# Prepare container for ssh
RUN mkdir /var/run/sshd

ENV CI=true
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
