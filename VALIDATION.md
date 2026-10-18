# Validation — 2026-10-18

PASS: GNU Octave 8.4.0 actual MEX compilation, repeated creation/close, closed-client checks, and all 69 shared protocol checks.

The C core was built as a shared library from the public SDK checkout. Test keys, times, identities and loopback server data are synthetic. Linux x86-64 only; other OS/runtime paths are unvalidated. No remote release or registry publication is performed by these scripts.

The test adapter uses Python only for JSON framing of raw-identifier octets, because Octave 8 jsondecode truncates strings at U+0000. Octave reconstructs the original character vector before calling the public SDK/MEX; terminal-NUL normalization and embedded-NUL rejection remain checked by the shared mex_strings regression.
