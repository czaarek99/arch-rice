#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar main_bar >>/tmp/polybar_main.log 2>&1 &
polybar left_bar >>/tmp/polybar_left.log 2>&1 &
polybar right_bar >>/tmp/polybar_right.log 2>&1 &
echo "Bars launched..."
