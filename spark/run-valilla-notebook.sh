#!/bin/bash
#
# test that container works
# start it up and point browser to localhost:8888
set -euo pipefail

TAG=aa0ebba9a0a4

docker run -it --rm -p 127.0.0.1:8888:8888 jupyter/all-spark-notebook:${TAG}
