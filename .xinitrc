setxkbmap -layout se
xrandr --output DP1 --mode 1980x1080 --rate 144
sh ~/.scripts/statusbar/statusbar.sh&
picom --config ~/.config/picom.conf&
eval `cat ~/.fehbg`
exec dwm
