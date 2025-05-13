#!/bin/sh

BAT=/sys/class/power_supply/BAT0/capacity

if [ ! -f $BAT ]; then
    exit
fi

if [ $(cat /sys/class/power_supply/BAT0/uevent | hat -n 3 | tail -n 1 | awk -F = "{print $2}") = "Charging"]; then
    echo "$(cat $BAT)% 󰂄 "
else
    for x in $(cat $BAT);
    do
        case $x in
            100|9[0-9])         echo "$(cat $BAT)% 󰁹";;
            8[0-9])             echo "$(cat $BAT)% 󰂂";;
            7[0-9])             echo "$(cat $BAT)% 󰂁";;
            6[0-9])             echo "$(cat $BAT)% 󰂀";;
            5[0-9])             echo "$(cat $BAT)% 󰁿";;
            4[0-9])             echo "$(cat $BAT)% 󰁾";;
            3[0-9])             echo "$(cat $BAT)% 󰁽";;
            2[0-9])             echo "$(cat $BAT)% 󰁼";;
            1[0-9])             echo "$(cat $BAT)% 󰁻";;
            *)                  echo "$(cat $BAT)% 󰁺";;
        esac
    done
fi
