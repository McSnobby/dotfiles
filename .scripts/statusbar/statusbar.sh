#!/bin/sh

dayanddate() {
    time=$(LC_TIME="sv_SE.UTF-8" date "+%A %d %B %Y")
    result=""
    for i in $time; do
        if [[ $i =~ '^[0-9]' ]]; then
            result+="$i "
        else
            result+="${i^} "
        fi
    done
    echo "${result::-1}"
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
