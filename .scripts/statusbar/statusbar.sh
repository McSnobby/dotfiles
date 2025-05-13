#!/bin/sh

dayanddate() {
    LC_TIME="sv_SE.UTF-8" date "+%A %d %B %Y"
}

battery() {
    sh ~/.scripts/statusbar/battery.sh
}

wifi() {
    sh ~/.scripts/statusbar/wifi.sh
}

timedate() {
    date "+%R"
}

while :; do 
    xsetroot -name "$(dayanddate)"";""$(battery)""$(wifi) ""$(timedate)"
    sleep 1
done
