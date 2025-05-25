#!/bin/bash

progdir="$(cd $(dirname "$0") || exit; pwd)"
SOU_DIR="${progdir%/*}"
program="python3 ${progdir}/mod/main.py"
log_file="${SOU_DIR}/update.log"

$program > "$log_file" 2>&1

if [[ "$SOU_DIR" != "/mnt/mod" ]]; then
    rm -rf "$progdir"
fi

sync
reboot
while true;do sleep 5; done
