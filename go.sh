#!/bin/bash

esmf-profiler -t /home/traces -n 'testa' -o /home/traces && pwd && ls -lah . && ls -lah /home/traces
