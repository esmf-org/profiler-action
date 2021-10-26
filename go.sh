#!/bin/bash

cd /home/esmf-profiler/traces
esmf-profiler -t . -n 'testa' -o . && pwd && ls -lah .