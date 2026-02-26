#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

DIET_IMAGE="homelai-diet"
HOMELAI_IMAGE="homelai-vosk"

echo "================================================"
echo " Building HomeLAI addons"
echo "================================================"

# DIET
echo ""
echo "[1/2] Building $DIET_IMAGE ..."
docker build \
    -t "$DIET_IMAGE" \
    --network=host \
    --file "$SCRIPT_DIR/diet/Dockerfile" \
    "$SCRIPT_DIR/diet"

echo "  $DIET_IMAGE built"

# HOMELAI
echo ""
echo "[2/2] Building $HOMELAI_IMAGE..."
docker build \
    -t "$HOMELAI_IMAGE" \
    --network=host \
    --file "$SCRIPT_DIR/homelai/Dockerfile" \
    "$SCRIPT_DIR/homelai"

echo "  $HOMELAI_IMAGE built"
