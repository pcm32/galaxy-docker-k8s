#!/bin/bash

# Required arguments: image name + image tag

USAGE="Usage: galaxy-run-root.sh image-name image-tag"
IMGNAME=${1:?"${USAGE}"}
IMGTAG=${2:?"${USAGE}"}


docker run -u root -it --rm --network gnet -p 8080:8080 ${IMGNAME}:${IMGTAG} bash