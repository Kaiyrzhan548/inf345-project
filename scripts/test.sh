#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
if python3 -c "import sys" >/dev/null 2>&1; then PY=python3; else PY=python; fi
"$PY" -m unittest discover -s tests 2>&1 | tee /tmp/out.log
total=$(sed -n 's/^Ran \([0-9]*\) test.*/\1/p' /tmp/out.log)
if grep -q '^OK' /tmp/out.log; then passed=$total; else passed=0; fi
echo "TESTS: $passed/$total"
