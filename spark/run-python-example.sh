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
docker run \
  --name spark \
  --rm -it \
  jupyter/all-spark-notebook:${TAG}  \
  /usr/local/spark/bin/spark-submit \
    --master local[*] \
    /usr/local/spark/examples/src/main/python/pi.py \
    1000

  # --mount type=bind,source=${HOME}/Documents/code/notebooks,target=/home/jovyan/work \
  # --mount type=bind,source=${HOME}/.aws,target=/home/developer/.aws,readonly \
