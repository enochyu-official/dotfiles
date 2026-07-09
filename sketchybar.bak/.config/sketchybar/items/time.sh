#!/bin/bash

sketchybar --add item time right               \
           --set time update_freq=30           \
                      script="$PLUGIN/time.sh"

