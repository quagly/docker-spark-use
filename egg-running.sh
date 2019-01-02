#!/bin/bash
#
# Run custom pyspark code from
# my spark application directory
# in a running container
#
# this depends on the gill project existing
# in the spark application directory and
# egg file generated
#
# git project is here: https://github.com/quagly/gill
#
# Created by: Michael West
# Date: 2018-Jan-02
set -euxo pipefail
source .config

# set workdir to location of egg and script
# from cantainers perspective
docker exec \
  -it \
  --workdir /home/jovyan/spark-app/gill \
  ${CONTAINER_NM} \
  spark-submit \
    --master local[*] \
    --py-files dist/gill-0.0.1-py3.6.egg \
    bin/run-gill.py
