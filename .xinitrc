setxkbmap -layout se
xset r rate 200 20
xrandr --output DP-0 --left-of DP-4
xrandr --output DP-2 --right-of DP-4
exec i3
