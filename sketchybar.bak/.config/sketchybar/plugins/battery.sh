#!/bin/bash
source "$CONFIG/colors.sh"
source "$CONFIG/icons.sh"

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ -n "$CHARGING" ]; then
  if [ "$PERCENTAGE" -ge 80 ]; then
    COLOR="$RED"
  else
    COLOR="$GREEN"
  fi
else
  if [ "$PERCENTAGE" -le 20 ]; then
    COLOR="$RED"
  else
    COLOR="$WHITE"
  fi
fi

sketchybar --set "$NAME" label="$PERCENTAGE%"

