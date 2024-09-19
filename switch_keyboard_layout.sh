#!/bin/bash

current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

if [ "$current_layout" == "us" ]; then
    setxkbmap th
    notify-send "Keyboard Layout" "Switched to Thai"
else
    setxkbmap us
    notify-send "Keyboard Layout" "Switched to English"
fi

# Set English as default if no layout is set
if [ -z "$current_layout" ]; then
    setxkbmap us
    notify-send "Keyboard Layout" "Set to default (English)"
fi

