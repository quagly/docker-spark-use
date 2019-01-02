#!/bin/bash

set -euo pipefail

source .config

docker exec -u ${MY_UID} -it ${CONTAINER_NM}\
  bash -l
