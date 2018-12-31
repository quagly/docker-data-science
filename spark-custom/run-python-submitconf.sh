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

# giving different name than notebook use  to avoid name conflict
# seems that either I should use existing container as notebook or not provide a name
#   --name spark-custom-run \
docker run \
  --rm -it \
  --user root \
  -e NB_UID=${MY_UID} \
  -e GRANT_SUDO=yes \
  --mount type=bind,source=${MY_DATA_DIR},target=/home/jovyan/data \
  --mount type=bind,source=${MY_APP_DIR},target=/home/jovyan/spark-app \
  spark-custom \
  spark-submit \
    --master local[*] \
    --conf "spark.driver.extraJavaOptions=-Dlog4j.configuration=file:/home/jovyan/spark-app/conf/log4j.properties" \
    --conf "spark.executor.extraJavaOptions=-Dlog4j.configuration=file:/home/jovyan/spark-app/conf/log4j.properties" \
    /usr/local/spark/examples/src/main/python/pi.py \
    80
