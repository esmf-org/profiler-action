#!/bin/bash

cd ~/traces
esmf-profiler -t . -n 'testa' -o . && pwd && ls -lah . && ls -lah ./data
