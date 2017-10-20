#!/bin/bash

# Set PHP-FPM pool workers CPU affinity so each worker gets one CPU core
# Note that FPM recycles threads, so you'll need to run this on cron periodically
# Author: Steve Kamerman

# Delay Start...
sleep 3

CPUS=$(grep -c CPU /proc/cpuinfo)
FPM_PIDS=$(ps auxw | grep php-fpm | grep pool | awk '{ print $2; }')

if [ "$FPM_PIDS" = "" ]; then
  echo "PHP-FPM is not running"
fi

typeset -i i
let i=0
for PID in $FPM_PIDS; do
  THIS_CPU=$(echo "$i % $CPUS" | bc)
  taskset -pc $THIS_CPU $PID
  let i++
done
