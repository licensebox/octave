#!/usr/bin/env python3
"""Test JSON framing only; every SDK operation still runs in GNU Octave.

Octave 8 jsondecode truncates JSON character strings at U+0000. Carry the raw
identifier as octets as well so the conformance adapter preserves its complete
length before exercising the actual public SDK/MEX validation.
"""
import json
import subprocess
import sys

request = json.load(sys.stdin)
if request.get("op") == "derive" and isinstance(request.get("raw_id"), str):
    request["raw_id_octets"] = list(request["raw_id"].encode("utf-8"))
process = subprocess.run(sys.argv[1:], input=json.dumps(request), text=True)
sys.exit(process.returncode)
