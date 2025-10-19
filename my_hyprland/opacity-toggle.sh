#!/bin/bash

STATE_FILE="/tmp/hypr_opacity_state"

if [ ! -f "$STATE_FILE" ]; then
    echo "normal" > "$STATE_FILE"
fi

STATE=$(cat "$STATE_FILE")

case $STATE in
    normal)
        # Semua transparan
        hyprctl keyword windowrulev2 "opacity 0.8 0.8, class:.*"
        hyprctl keyword decoration:blur:enabled true
        hyprctl keyword decoration:blur:size 3
        hyprctl keyword decoration:blur:passes 3
        echo "transparent" > "$STATE_FILE"
        notify-send "🪞 Opacity Mode" "Transparent mode + blur aktif"
        ;;
    transparent)
        # Semua solid
        hyprctl keyword windowrulev2 "opacity 1.0 1.0, class:.*"
        hyprctl keyword decoration:blur:enabled false
        echo "solid" > "$STATE_FILE"
        notify-send "🧱 Opacity Mode" "Solid mode (tanpa blur)"
        ;;
    solid)
        # Balik ke normal
        hyprctl keyword windowrulev2 "opacity 0.9 0, class:.*"
        hyprctl keyword decoration:blur:enabled true
        hyprctl keyword decoration:blur:size 6
        hyprctl keyword decoration:blur:passe 2
        echo "normal" > "$STATE_FILE"
        notify-send "🌫️ Opacity Mode" "Normal mode + light blur"
        ;;
esac
