#!/bin/bash

sketchybar --add item cpu right               \
           --set cpu  update_freq=2           \
                      icon=$CPU               \
                      script="$PLUGIN/cpu.sh"

