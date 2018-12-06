#!/bin/bash

set -euo pipefail

# command from
# https://github.com/jupyter/docker-stacks/tree/master/tensorflow-notebook
docker run -it --rm -p 127.0.0.1:8888:8888 jupyter/tensorflow-notebook
