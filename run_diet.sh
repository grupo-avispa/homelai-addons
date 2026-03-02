#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

docker run --rm --network=host \
   -v $SCRIPT_DIR/diet/app/models:/app/diet_classifier_pytorch/models \
   -v $SCRIPT_DIR/diet/app/data:/app/diet_classifier_pytorch/data \
   homelai-diet:latest
