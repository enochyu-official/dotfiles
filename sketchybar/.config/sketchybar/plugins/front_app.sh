#!/bin/sh

if [ "$SENDER" = "front_app_switched" ]; then
  sketchybar --set "$NAME" label="$INFO" \
                           icon="$($PLUGIN/icon_map_fn.sh "$INFO")"
fi

