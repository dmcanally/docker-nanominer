#!/usr/bin/env bash
set -euo pipefail
set -x

if [ $# -ne 1 ]; then
  echo "$0 <must supply nanominer version eg: 1.2.3>"
  exit 1
fi

DOCKER_project_namespace='dmcanally'
DOCKER_app_name='nanominer'
VER=$1
DOCKER_image_tag_ver=$DOCKER_project_namespace/$DOCKER_app_name:$VER
DOCKER_image_tag_latest=$DOCKER_project_namespace/$DOCKER_app_name

docker build --pull --no-cache --build-arg "VER=$VER" -t "$DOCKER_image_tag_latest" -t "$DOCKER_image_tag_ver" .
docker push $DOCKER_image_tag_latest
docker push $DOCKER_image_tag_ver
printf "$DOCKER_image_tag_ver\n" > .manifest
