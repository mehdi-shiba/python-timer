# Python timer shell script

Simple Bash shell script to time multiple python scripts with arguments and write to log.

I needed this to time deep learning scripts over night. 
Just edit the set in `script_timer.sh` with a list of scripts you need to launch.

`set "xyz.py -batch=256" "xyz.py -batch=64 -epoch=10" "xyz.py -gpu=0"`

You can add arguments if necessary, just keep them all in between double quotes.
Results will be written to `time_log.txt` (appended if the file already exists).
