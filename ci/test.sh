#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
source ci/env.sh
mkoctfile --mex -I"$LICENSEBOX_INCLUDE_DIR" src/licensebox_mex.c -L"$LICENSEBOX_LIB_DIR" -llicensebox -o build/licensebox_mex
cp src/Licensebox.m build/
octave-cli --quiet --no-gui --eval "addpath('build');addpath('test');lifetime()"
tar -czf build/licensebox-octave-0.1.0.tar.gz LICENSE src test ci
