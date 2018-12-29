#!/bin/bash
#
# get a pyspark shell
set -euo pipefail

# since tag is shared between scripts should put in environment
TAG=aa0ebba9a0a4
# run a command in spark container
# need to mount a data directory to keep results, or push them somewhere
docker run \
  --name spark \
  --rm -it \
  jupyter/all-spark-notebook:${TAG}  \
  /usr/local/spark/bin/pyspark
