#!/bin/bash

TOUCHPAD_NAME="dell0ab4:00-27c6:0d43-touchpad"

STATE=$(hyprctl getoption device:"$TOUCHPAD_NAME" enabled | grep 'int:' | awk '{ print $2 }')

if [ "$STATE" == "1" ]; then
    # hyprctl keyword device:"$TOUCHPAD_NAME" enabled false
    hyprctl keyword 'device[dell0ab4:00-27c6:0d43-touchpad]:enabled' 'false'
    notify-send "Touchpad Disabled"
else
    # hyprctl keyword device:"$TOUCHPAD_NAME" enabled true
    hyprctl keyword 'device[dell0ab4:00-27c6:0d43-touchpad]:enabled' 'true'
    notify-send "Touchpad Enabled"
fi

