# Docker Jenkins Slave for Node.js

Simple Dockerfiles to build a Jenkins slave for Node.js

# Introduction

Use it with [Jenkins Docker Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Docker+Plugin) or to create a Jenkins slave including Node.js.

Build your own images by using Dockerfile in related Node.js version folder.

# How to use this image

This image provides access via SSH for user "jenkins". Using Jenkins Docker Plugin, there is no need to start this image by your self.

If you want to use it without Jenkins Docker Plugin create a container using:

    docker run --name my-jenkins-slave pcvolkmer/jenkins-slave-nodejs

# Additional usage for GitLab CI

This image can be used within [GitLab CI](https://docs.gitlab.com/ce/ci/docker/using_docker_build.html) providing OpenJDK 17 and node environment.

This example `.gitlab-ci.yml`-file describes a simple gradle based build:

    build:
      image: pcvolkmer/jenkins-slave-nodejs:21
    script:
      - ./gradlew build
    ...

By replacing or adding scripts, it is possible to use *npm* and, after installing it via `.gitlab-ci.yml`-file, *bower*, *gulp* and so on.

# Packages installed

Based on official [Node Docker image](https://registry.hub.docker.com/_/node/), this image contains OpenJDK 17 (to run Jenkins slave), Git, OpenSSH and a user named "jenkins" with password "jenkins".
