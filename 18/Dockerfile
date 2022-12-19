# This Dockerfile is used to build an image containing a node jenkins slave

FROM node:18

# Add backports
RUN echo "deb http://http.debian.net/debian bullseye-backports main" >> /etc/apt/sources.list

# Upgrade and Install packages
RUN apt-get update && apt-get -y upgrade && apt-get install -y git openssh-server && apt-get -t bullseye-backports install -y openjdk-11-jdk

# Prepare container for ssh
RUN mkdir /var/run/sshd && adduser --quiet jenkins && echo "jenkins:jenkins" | chpasswd

ENV CI=true
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
