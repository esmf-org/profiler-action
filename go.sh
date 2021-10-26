#!/bin/bash

ls -lah
pwd
esmf-profiler -t /home/traces -n $1 -o /home/traces