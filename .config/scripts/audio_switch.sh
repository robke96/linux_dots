#!/bin/bash
# Headphones
sink1=$(pactl list sinks short | awk '$2 ~ /analog(-stereo)?/ {print $2}')
# Monitor speakers
sink2=$(pactl list sinks short | awk '$2 ~ /hdmi(-stereo)?/ {print $2}')

case $(pactl info | grep "Default Sink" | awk '{print $NF}') in
  "$sink1")
    pactl set-default-sink "$sink2"
    dunstify "󰍹 | Garsas perjungtas į monitorių."
    ;;
  "$sink2")
    pactl set-default-sink "$sink1"
    dunstify "  | Garsas perjungtas į ausines."
    ;;
esac

