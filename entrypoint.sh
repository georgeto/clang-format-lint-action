#!/bin/sh -l

cd "$GITHUB_WORKSPACE"

/usr/local/bin/run-clang-format.py "$@"
