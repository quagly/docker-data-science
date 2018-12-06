#!/bin/bash
#
# test that container works
# start it up and point browser to localhost:8888
set -euo pipefail

docker run -it --rm -p 127.0.0.1:8888:8888 jupyter/scipy-notebook
