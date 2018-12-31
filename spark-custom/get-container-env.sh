#!/bin/bash
#
# get enviornment from container

MY_UID=$UID

# adding TESTENV to environment
docker run \
  --user root \
  -e NB_UID=${MY_UID} \
  --env SPARK_CONF_DIR=/home/jovyan/spark-app/conf \
  spark-custom \
  env | sort


