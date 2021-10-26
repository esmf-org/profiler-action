#!/bin/bash

ls -lah
pwd
esmf-profiler -t /github/workspace/traces -n $1 -o /github/workspace/traces