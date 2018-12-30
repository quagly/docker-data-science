#!/bin/bash

set -euo pipefail

# login to spark container
docker run \
  --name spark-custom \
  --mount type=bind,source=${HOME}/Documents/code/notebooks,target=/home/jovyan/work \
  --rm -it \
  spark-custom \
  bash -il
