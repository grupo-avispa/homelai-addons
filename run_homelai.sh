#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

docker run --rm --network=host \
   -v $SCRIPT_DIR/homelai/app/models:/app/homelai-rpi-shs/models \
   -v $SCRIPT_DIR/homelai/app/config:/app/homelai-rpi-shs/config \
   homelai-vosk:latest
