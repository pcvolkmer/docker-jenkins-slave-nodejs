#!/bin/bash

IMAGE_NAME="pcvolkmer/jenkins-slave-nodejs"
LTS_VERSION="20"
LATEST_VERSION="21"

for version in $(find . -maxdepth 1 -mindepth 1 -type d -printf '%f\n'); do
  if [[ "$version" =~ ^\..* ]]; then
    echo "Skip subfolder $version"
  else
    echo "Build version $version"
    cd "$version" &> /dev/null
    if [[ $version == $LTS_VERSION ]]; then
      docker build --no-cache -q -t "$IMAGE_NAME:$version" -t "$IMAGE_NAME:lts" .
      docker push -q "$IMAGE_NAME:$version"
      docker push -q "$IMAGE_NAME:lts"
    elif [[ $version == $LATEST_VERSION ]]; then
      docker build --no-cache -q -t "$IMAGE_NAME:$version" -t "$IMAGE_NAME:latest" .
      docker push -q "$IMAGE_NAME:$version"
      docker push -q "$IMAGE_NAME:latest"
    else
      docker build --no-cache -q -t "$IMAGE_NAME:$version" .
      docker push -q "$IMAGE_NAME:$version"
    fi
    cd - &> /dev/null
  fi
done
