#!/bin/bash
set -eu

#
# Set env variables here
#
JUPYTER_DOCKER_IMAGE=jupyter/datascience-notebook:python-3.8.3

rm -f .env
cat <<EOT >> $(cd $(dirname ${0}) && pwd)/.env
JUPYTER_DOCKER_IMAGE=${JUPYTER_DOCKER_IMAGE}
DOCKER_BIN_PATH=$(which docker)
HOST_USER=$(id -un)
HOST_UID=$(id -u)
HOST_GID=$(id -g)
EOT
