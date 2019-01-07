# extended custom jupyter notebook container

## DEFUNCT

This directory was to explore customization possibilities.  It worked.  Now this as been implemented
configuration driven and modular.  Keeping this for reference and becuase some things were explored and
not used which may be useful later

* [docker-spark-create](https://github.com/quagly/docker-spark-create) for docker file and image release
* [docker-spark-use](https://github.com/quagly/docker-spark-use) how to use the image
* [docker hub repo](https://cloud.docker.com/repository/docker/quagly/spark-all/general) image repository

## Documentation

jupyter docker-stack extended to work more easily as a spark command line and testing platform
container published to https://cloud.docker.com/repository/docker/quagly/spark/general

This is exploritory as I wasn't sure how to make this work.  See standalone project
[docker-spark-use](https://github.com/quagly/docker-spark-use)
 for the usability aspect.  That project does not include container build.

TODO:  Create docker build project and automate builds and versioning with DockerHub

Also Provides a spark notebook with python, R, and scala notebook support.  See jupyter/docker-stacks documentation.

* [github root](https://github.com/jupyter/docker-stacks/tree/master)
* [documentation root](https://jupyter-docker-stacks.readthedocs.io/en/latest)
* [selecting a stack](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html)
* [jupyter docker hub](https://hub.docker.com/u/jupyter/)
* [spark image specifics](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/specifics.html)

* `build.sh` builds the image
* `run.sh` run a vanilla container
* `run-conf.sh` run container with local spark configuration directory

Other scripts are for testing or just things I tried out.  Keeping them for now until I understand better what it useful.


