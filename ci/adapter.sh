#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
source ci/env.sh
exec octave-cli --quiet --no-gui --eval "addpath('build');addpath('test');adapter()"
