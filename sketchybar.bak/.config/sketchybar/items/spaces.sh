#!/bin/bash

WORKSPACES=(1 2 3 4 5 6 7 8 9 10)

for sid in "${WORKSPACES[@]}"
do
  sketchybar --add space space.$sid left                                    \
             --set space.$sid space=$sid                                    \
                              icon=$sid                                     \
                              label.font="sketchybar-app-font:Regular:16.0" \
                              label.padding_right=20                        \
                              label.y_offset=-1                             \
                              script="$PLUGIN/spaces.sh"              
done

sketchybar --add item space_separator left                             \
           --set space_separator icon=""                              \
                                 icon.color=$ACCENT_COLOR              \
                                 icon.padding_left=4                   \
                                 label.drawing=off                     \
                                 background.drawing=off                \
                                 script="$PLUGIN/space_windows.sh"     \
           --subscribe space_separator space_windows_change

