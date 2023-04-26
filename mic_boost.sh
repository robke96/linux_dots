#!/bin/bash
MIC_INFO=$(pactl list sources short | awk '/[Ss]amson.*[Mm]eteor/ {print $1 " " $2}')
read -r MIC_ID MIC_NAME <<< "$MIC_INFO"

SET_VOLUME=75
VOLUME_NOW=$(pactl get-source-volume "$MIC_NAME" | awk '/front-left:/ {print $5}' | cut -d'%' -f1)

pactl subscribe | while read event; do
    if [[ "$event" == *"change"* ]]; then
        pactl set-source-volume "$MIC_NAME" $SET_VOLUME%
    fi
done