#!/bin/bash

cd /home/esmf-profiler/traces
esmf-profiler -t . -n 'testa' -o . && pwd && ls -lah .
ls -lah /home/runner/work/esmf-profiler/esmf-profiler
ls -lah /home/runner/work/esmf-profiler/esmf-profiler/traces
ls -lah /home/runner/work/esmf-profiler/esmf-profiler/data