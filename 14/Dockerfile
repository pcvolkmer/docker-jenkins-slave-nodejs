# This Dockerfile is used to build an image containing a node jenkins slave

FROM node:14

# Add backports
RUN echo "deb http://http.debian.net/debian buster-backports main" >> /etc/apt/sources.list

# Upgrade and Install packages
RUN apt-get update && apt-get -y upgrade && apt-get install -y git openssh-server && apt-get -t buster-backports install -y openjdk-8-jdk

# Add user and group for jenkins
RUN groupadd -g 10000 jenkins
RUN useradd -m -u 10000 -g 10000 jenkins
RUN echo "jenkins:jenkins" | chpasswd

# Prepare container for ssh
RUN mkdir /var/run/sshd

ENV CI=true
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
