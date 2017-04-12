#!/bin/bash

# Only output time in seconds
TIMEFORMAT=%R

# List of python scripts to run with arguments
set "xyz.py -batch=256" "xyz.py -batch=64 -epoch=10" "xyz.py -gpu=0"

for script; do
    exec 3>&1 4>&2
    {
        echo ==================================================
        echo "Running script $script:"
        echo "$(date)"
        ( time python $script 1>&3 2>&4; ) 2>&1
    } | tee -a time_log.txt
    exec 3>&- 4>&-
done
