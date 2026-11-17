#!/bin/bash
# Regenerate brainstem_api Dart code with protobuf ^6 compatible plugin.
#
# Prerequisites:
#   dart pub global activate protoc_plugin
#   # Ensure protoc-gen-dart is in PATH:
#   export PATH="$PATH:$HOME/.pub-cache/bin"
#
# Usage:
#   cd brainstem_api
#   bash tool/regen_dart.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
DART_OUT="$ROOT_DIR/dart/lib"

echo "=== Regenerating brainstem_api Dart code (protobuf ^6) ==="
echo "Root: $ROOT_DIR"
echo "Output: $DART_OUT"

# Clean old generated files
rm -f "$DART_OUT/brainstem_api/"*.pb*.dart
rm -f "$DART_OUT/google/protobuf/"*.pb*.dart
echo "Cleaned old files"

# Generate project protos (with gRPC)
protoc \
  --dart_out="grpc:$DART_OUT/" \
  -I "$ROOT_DIR" \
  "$ROOT_DIR/brainstem_api/common.proto" \
  "$ROOT_DIR/brainstem_api/mujoco.proto" \
  "$ROOT_DIR/brainstem_api/recovery.proto" \
  "$ROOT_DIR/brainstem_api/cms.proto"

echo "Generated proto stubs"

# Note: With protobuf ^6, well-known types (Empty, Timestamp, Duration)
# are bundled in the protobuf package itself at:
#   package:protobuf/well_known_types/google/protobuf/empty.pb.dart
#   package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart
#   package:protobuf/well_known_types/google/protobuf/duration.pb.dart
#
# The new protoc-gen-dart should automatically reference these.
# If it still generates local copies, remove them:
if [ -d "$DART_OUT/google" ]; then
  echo "Warning: local google/ well-known types generated. Removing..."
  rm -rf "$DART_OUT/google"
fi

echo "=== Done! Run 'cd dart && dart pub get' to verify ==="
