#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
source ci/env.sh
exec python3 test/frame.py octave-cli --quiet --no-gui --eval "addpath('build');addpath('test');adapter()"
