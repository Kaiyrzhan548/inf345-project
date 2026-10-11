#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
if python3 -c "import sys" >/dev/null 2>&1; then PY=python3; else PY=python; fi
exec "$PY" src/server.py
