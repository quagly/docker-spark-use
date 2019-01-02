#!/bin/bash
#
# Run a spark example shiped with spark to estimate PI
# to verify the container is functioning
#
# to test just the container there are no dependeies external to the container
#
# Created by: Michael West
# Date: 2018-Jan-02

set -euo pipefail

docker run \
  --rm     \
  quagly/spark \
  spark-submit \
    --master local[*] \
    /usr/local/spark/examples/src/main/python/pi.py \
    80
