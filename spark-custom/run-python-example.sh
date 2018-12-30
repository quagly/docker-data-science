#!/bin/bash
#
# Run a spark example
# from "Spark - The Definitive Guide"
# chapter 16 - Developing Spark Applications
# page 274

set -euo pipefail

# since tag is shared between scripts should put in environment
TAG=aa0ebba9a0a4
# run a command in spark container
# need to mount a data directory to keep results, or push them somewhere
# note that local[*] uses all CPUs available to the docker container

# giving different name than notebook use  to avoid name conflict
# seems that either I should use existing container as notebook or not provide a name
#   --name spark-custom-run \
docker run \
  --rm -it \
  spark-custom \
  spark-submit \
    --master local[*] \
    /usr/local/spark/examples/src/main/python/pi.py \
    80

  # --mount type=bind,source=${HOME}/Documents/code/notebooks,target=/home/jovyan/work \
  # --mount type=bind,source=${HOME}/.aws,target=/home/developer/.aws,readonly \
