#!/bin/bash

set -euo pipefail

# login to scipy container
docker run \
  --name spark \
  --mount type=bind,source=${HOME}/Documents/code/notebooks,target=/home/jovyan/work \
  --rm -it \
  jupyter/all-spark-notebook \
  bash -il

  # --mount type=bind,source=${HOME}/.aws,target=/home/developer/.aws,readonly \
