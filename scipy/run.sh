#!/bin/bash
#
# use jupyter lab notebooks from docker container for scipy
#
# reference local persistant notebook area for notebooks
#
# Created by: Michael West
# Date: 2018-Dec-05
#
############################

set -euxo pipefail

MY_UID=$UID
MY_NOTEBOOK_DIR=$HOME/Documents/code/notebooks

# set UID/GID to my local user so that I don't need to modify my directory ownership
# grant sudo so that I can quickly login to the container and install stuff to test
# of course installing stuff must be put in a docker build to be repeatable
# mount local notebook directory read-write so for notebook persistance
# it is also possible to mount local credentials such as aws and ssh keys
# I don't expect that will be needed since work will be done through notebook only

# note that the docker data science containers no longer need to
# run the start.sh script with paramters to get jupyter lab
# just pass in -e JUPYTER_ENABLE_LAB=yes
docker run -it --rm -p 127.0.0.1:8888:8888 \
  --name scipy \
  --user root \
  -e NB_UID=${MY_UID} \
  -e GRANT_SUDO=yes \
  -e JUPYTER_ENABLE_LAB=yes \
  --mount type=bind,source=${MY_NOTEBOOK_DIR},target=/home/jovyan/work \
  jupyter/scipy-notebook
