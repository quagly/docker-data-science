#!/bin/bash

set -euo pipefail

TAG=aa0ebba9a0a4

# login to spark container
docker run \
  --name spark \
  --mount type=bind,source=${HOME}/Documents/code/notebooks,target=/home/jovyan/work \
  --rm -it \
  jupyter/all-spark-notebook:${TAG} \
  bash -il

  # --mount type=bind,source=${HOME}/.aws,target=/home/developer/.aws,readonly \
