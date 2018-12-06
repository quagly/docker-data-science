#!/bin/bash

set -euo pipefail

# login to scipy container
docker run \
  --name scipy \
  --mount type=bind,source=${HOME}/Documents/code/notebooks,target=/home/jovyan/work \
  --rm -it \
  jupyter/scipy-notebook \
  bash -il

  # --mount type=bind,source=${HOME}/.aws,target=/home/developer/.aws,readonly \
