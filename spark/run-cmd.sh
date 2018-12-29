#!/bin/bash
#
# Runs a command inside container
# for example, use env to see container environment

set -euo pipefail

# since tag is shared between scripts should put in environment
TAG=aa0ebba9a0a4
# run a command in spark container
# need to mount a data directory to keep results, or push them somewhere
docker run \
  --name spark \
  --rm -it \
  jupyter/all-spark-notebook:${TAG}  \
  $1

  # --mount type=bind,source=${HOME}/Documents/code/notebooks,target=/home/jovyan/work \
  # --mount type=bind,source=${HOME}/.aws,target=/home/developer/.aws,readonly \
