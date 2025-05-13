setxkbmap -layout se
sh ~/.scripts/statusbar/statusbar.sh&
picom --config ~/.config/picom.conf&
eval `cat ~/.fehbg`
exec dwm
