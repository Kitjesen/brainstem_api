#!/bin/bash
# Regenerate brainstem_api Python stubs with the same grpcio-tools release
# that produced the checked-in files (GRPC_GENERATED_VERSION 1.78.0).
#
# Prerequisites:
#   python -m pip install "grpcio-tools==1.78.0"
#
# Usage:
#   bash tool/regen_python.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

if command -v python >/dev/null 2>&1; then
  PY=python
else
  PY=python3
fi

cd "$ROOT_DIR/python"
"$PY" -m grpc_tools.protoc \
  -I .. \
  --python_out=. \
  --pyi_out=. \
  --grpc_python_out=. \
  ../brainstem_api/common.proto \
  ../brainstem_api/mujoco.proto \
  ../brainstem_api/recovery.proto \
  ../brainstem_api/cms.proto
