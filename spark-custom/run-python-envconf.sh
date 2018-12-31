#!/bin/bash
#
# Run a spark example
# from "Spark - The Definitive Guide"
# chapter 16 - Developing Spark Applications
# page 274

set -euo pipefail

MY_UID=$UID
MY_DATA_DIR=$HOME/Documents/data
MY_APP_DIR=$HOME/Documents/code/spark-app

# run a command in spark container
# need to mount a data directory to keep results, or push them somewhere
# note that local[*] uses all CPUs available to the docker container

# do not name these ephemeral containers.  It's not a pet.
docker run \
  --user root \
  -e NB_UID=${MY_UID} \
  -e GRANT_SUDO=yes \
  --env SPARK_CONF_DIR=/home/jovyan/spark-app/conf \
  --mount type=bind,source=${MY_DATA_DIR},target=/home/jovyan/data \
  --mount type=bind,source=${MY_APP_DIR},target=/home/jovyan/spark-app \
  spark-custom \
  spark-submit \
    --master local[*] \
    /usr/local/spark/examples/src/main/python/pi.py \
    80
