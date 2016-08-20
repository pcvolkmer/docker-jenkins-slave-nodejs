# Supported tags and respective `Dockerfile` links

- [`4.5`, `4.5` (*Dockerfile*)](https://github.com/pcvolkmer/docker-jenkins-slave-nodejs/blob/master/4.5/Dockerfile)
- [`5.12`, `5.12` (*Dockerfile*)](https://github.com/pcvolkmer/docker-jenkins-slave-nodejs/blob/master/5.12/Dockerfile)
- [`6.4`, `6.4` (*Dockerfile*)](https://github.com/pcvolkmer/docker-jenkins-slave-nodejs/blob/master/6.3/Dockerfile)

[![](https://images.microbadger.com/badges/image/pcvolkmer/jenkins-slave-nodejs.svg)](http://microbadger.com/images/pcvolkmer/jenkins-slave-nodejs "Get your own image badge on microbadger.com")


# Introduction

Dockerfile to build a [Jenkins](https://jenkins-ci.org)-slave container image.
Use it with [Jenkins Docker Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Docker+Plugin) or to create a Jenkins slave including NodeJS.

# How to use this image

This image provides access via SSH for user "jenkins". Using Jenkins Docker Plugin, there is no need to start this image by your self.

If you want to use it without Jenkins Docker Plugin create a container using:

    docker run --name my-jenkins-slave pcvolkmer/jenkins-slave-nodejs

# Packages installed

Based on official [Node Docker image](https://registry.hub.docker.com/_/node/), this image contains OpenJDK 8 (to run Jenkins slave), Git, OpenSSH and a user named "jenkins" with password "jenkins".
