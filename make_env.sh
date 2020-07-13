#!/bin/bash
set -eu
cat <<EOT >> $(cd $(dirname ${0}) && pwd)/.env
HOST_UID=`id -u`
HOST_GID=`id -g`
EOT
