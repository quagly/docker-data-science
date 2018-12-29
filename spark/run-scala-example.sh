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
    --class org.apache.spark.examples.SparkPi \
    /usr/local/spark/examples/jars/spark-examples_2.11-2.4.0.jar \
    1000
