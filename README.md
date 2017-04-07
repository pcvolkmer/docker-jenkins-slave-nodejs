# Supported tags and respective `Dockerfile` links

- [`4.8`, `4.8` (*Dockerfile*)](https://github.com/pcvolkmer/docker-jenkins-slave-nodejs/blob/master/4.8/Dockerfile)
- [`6.10`, `6.10` (*Dockerfile*)](https://github.com/pcvolkmer/docker-jenkins-slave-nodejs/blob/master/6.10/Dockerfile)
- [`7.8`, `7.8` (*Dockerfile*)](https://github.com/pcvolkmer/docker-jenkins-slave-nodejs/blob/master/7.8/Dockerfile)

[![](https://images.microbadger.com/badges/image/pcvolkmer/jenkins-slave-nodejs.svg)](http://microbadger.com/images/pcvolkmer/jenkins-slave-nodejs "Get your own image badge on microbadger.com")


# Introduction

Dockerfile to build a [Jenkins](https://jenkins-ci.org)-slave container image.
Use it with [Jenkins Docker Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Docker+Plugin) or to create a Jenkins slave including NodeJS.

# How to use this image

This image provides access via SSH for user "jenkins". Using Jenkins Docker Plugin, there is no need to start this image by your self.

If you want to use it without Jenkins Docker Plugin create a container using:

    docker run --name my-jenkins-slave pcvolkmer/jenkins-slave-nodejs

# Additional usage for GitLab CI

This image can be used within [GitLab CI](https://docs.gitlab.com/ce/ci/docker/using_docker_build.html) providing OpenJDK 8 and node environment.

This example `.gitlab-ci.yml`-file describes a simple gradle based build:

    build:
      image: pcvolkmer/jenkins-slave-nodejs:7.8
    script:
      - ./gradlew build
    ...

By replacing or adding scripts, it is possible to use *npm* and, after installing it via `.gitlab-ci.yml`-file, *bower*, *gulp* and so on.

# Packages installed

Based on official [Node Docker image](https://registry.hub.docker.com/_/node/), this image contains OpenJDK 8 (to run Jenkins slave), Git, OpenSSH and a user named "jenkins" with password "jenkins".
