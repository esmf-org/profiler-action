#!/bin/bash

cd /home/esmf-profiler/traces
esmf-profiler -t . -n 'testa' -o ./ouput && pwd && ls -lah . && ls -lah ./output
