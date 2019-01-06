#!/bin/bash

set -euo pipefail

source .config

# login to non-running vanilla spark container
# just to check it out
docker run \
  --rm -it \
  ${IMAGE_NM} \
  bash -il
