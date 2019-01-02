#!/bin/bash
#
# Run a spark example shiped with spark to estimate PI
# to verify the container is functioning
#
# to test just the container there are no dependeies external to the container
# parameter to pi.py is interations
# note that I am using python instead of scala version of this test as python tests more of the stack
# if python works then scala works but not vice-versa
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
    12
