#!/bin/bash

docker build --squash --tag spark-custom  . 2>&1 | tee log/build.log
