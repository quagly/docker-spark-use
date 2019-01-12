#!/bin/bash

# pull down latest :latest image
set -euo pipefail

source .config

docker pull ${IMAGE_NM}:latest
