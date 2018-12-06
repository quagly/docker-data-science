#!/bin/bash

set -euo pipefail

# login to tensorflow notebook
docker run \
  --name tensor-flow \
  --mount type=bind,source=${HOME}/Documents/code/notebooks,target=/home/jovyan/work \
  --rm -it \
  jupyter/tensorflow-notebook \
  bash -il

  # --mount type=bind,source=${HOME}/.aws,target=/home/developer/.aws,readonly \
