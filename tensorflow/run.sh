#!/bin/bash

set -euxo pipefail

MY_UID=$UID
MY_NOTEBOOK_DIR=$HOME/Documents/code/notebooks

# set UID/GID to my local user so that I don't need to modify my directory ownership
# grant sudo so that I can quickly login to the container and install stuff to test
# mount local notebook directory read-write so for notebook persistance

docker run -it --rm -p 127.0.0.1:8888:8888 \
  --name tensorflow \
  --user root \
  -e NB_UID=${MY_UID} \
  -e GRANT_SUDO=yes \
  --mount type=bind,source=${MY_NOTEBOOK_DIR},target=/home/jovyan/work \
  jupyter/tensorflow-notebook start.sh jupyter lab

