# Supported tags and respective `Dockerfile` links

- [`4.2`, `4.2` (*Dockerfile*)](https://github.com/pcvolkmer/docker-jenkins-slave-nodejs/blob/master/4.2/Dockerfile)
- [`4.4`, `4.4` (*Dockerfile*)](https://github.com/pcvolkmer/docker-jenkins-slave-nodejs/blob/master/4.4/Dockerfile)
- [`5.11`, `5.11` (*Dockerfile*)](https://github.com/pcvolkmer/docker-jenkins-slave-nodejs/blob/master/5.11/Dockerfile)
- [`6.0`, `6.0` (*Dockerfile*)](https://github.com/pcvolkmer/docker-jenkins-slave-nodejs/blob/master/6.0/Dockerfile)

[![](https://badge.imagelayers.io/pcvolkmer/jenkins-slave-nodejs:6.0.svg)](https://imagelayers.io/?images=pcvolkmer/jenkins-slave-nodejs:6.0 'Get your own badge on imagelayers.io')


# Introduction

Dockerfile to build a [Jenkins](https://jenkins-ci.org)-slave container image.
Use it with [Jenkins Docker Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Docker+Plugin) or to create a Jenkins slave including NodeJS.

# How to use this image

This image provides access via SSH for user "jenkins". Using Jenkins Docker Plugin, there is no need to start this image by your self.

If you want to use it without Jenkins Docker Plugin create a container using:

    docker run --name my-jenkins-slave pcvolkmer/jenkins-slave-nodejs

# Packages installed

Based on official [Node Docker image](https://registry.hub.docker.com/_/node/), this image contains OpenJDK 8 (to run Jenkins slave), Git, OpenSSH and a user named "jenkins" with password "jenkins".
