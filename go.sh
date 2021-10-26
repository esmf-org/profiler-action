#!/bin/bash

ls -lah
esmf-profiler -t /github/workspace/tests/fixtures/test-traces-large -n $1 -o /github/workspace/tests/fixtures/test-traces-large