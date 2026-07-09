BATT_INFO=$(pmset -g batt)
PERCENT=$(echo "$BATT_INFO" | grep -Eo "\d+%" | cut -d% -f1)
IS_AC=$(echo "$BATT_INFO" | grep -q "AC Power" && echo true || echo false)

if [ "$IS_AC" = true ]; then
    if [ "$PERCENT" -ge 80 ]; then
        echo "#[fg=red]${PERCENT}%"
    else
        echo "#[fg=green]${PERCENT}%"
    fi
elif [ "$PERCENT" -le 20 ]; then
    echo "#[fg=red]${PERCENT}%"
else
    echo "#[fg=white]${PERCENT}%"
fi

