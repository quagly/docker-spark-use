#!/bin/bash
#
# Run a spark example shiped with spark to estimate PI
# to verify the container is functioning
#
# this tests agains the running container
#
# Created by: Michael West
# Date: 2018-Jan-02

set -euxo pipefail
source .config

docker exec \
  -it \
  ${CONTAINER_NM} \
  spark-submit \
    --master local[*] \
    /usr/local/spark/examples/src/main/python/pi.py \
    12
