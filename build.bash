# this script will recomplie `main.tex` every 5 second,
# and it will fail when the main.tex compile failed
#
# Ctrl + c stop the script

#!/bin/bash


set -xe

while true; do
    sleep 5;
    inotifywait -e modify -d -o '.' main.tex
  xelatex main.tex
done

