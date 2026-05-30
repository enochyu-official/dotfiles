#!/bin/bash

sketchybar --add item battery right                            \
           --set battery update_freq=120                       \
                         icon=$BATTERY                         \
                         script="$PLUGIN/battery.sh"           \
           --subscribe battery system_woke power_source_change

