#!/bin/bash
#
# run with the default configuration instead of custom directory
# helpful to isolate custom configuration issues
#
# use jupyter lab notebooks from docker container for spark-custom
#
# reference local persistant notebook area for notebooks
#
# Created by: Michael West
# Date: 2018-Dec-30
#
############################

set -euxo pipefail

# get MY_* variables
source .config

# consider conditionallly mounting based on config
# or defining named volumes seperately and mounting here
# consider using docker compose if getting that sophisticated
docker run -it --rm -p 127.0.0.1:8888:8888 \
  --name spark-custom \
  --user root \
  -e NB_UID=${MY_UID} \
  -e GRANT_SUDO=yes \
  -e JUPYTER_ENABLE_LAB=yes \
  --mount type=bind,source=${MY_NOTEBOOK_DIR},target=/home/jovyan/work \
  --mount type=bind,source=${MY_DATA_DIR},target=/home/jovyan/data \
  --mount type=bind,source=${MY_APP_DIR},target=/home/jovyan/spark-app \
  ${IMAGE_NM}
