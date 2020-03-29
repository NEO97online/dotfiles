#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Launch top and bottom bars
echo "---" | tee -a /tmp/polybar-top.log /tmp/polybar-bottom.log
polybar top >>/tmp/polybar-top.log 2>&1 &
polybar bottom >>/tmp/polybar-bottom.log 2>&1 &

echo "Bars launched."
