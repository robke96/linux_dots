#!/bin/bash
setFanSpeed() {
    sudo -S nvidia-settings -a "*:1[gpu:0]/GPUFanControlState=1" -a "*:1[fan-0]/GPUTargetFanSpeed=$1" > /dev/null
}

cleanup() {
    nvidia-settings -a GPUFanControlState=0
    exit
}

declare -i gpuTemp

# Set cleanup function (clean up and exit when interrupted)
trap cleanup 1 2 3 15 20

while true; do
    # Get NVIDIA GPU temperature
    gpuTemp=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader)
    #echo -en "Current GPU temperature: $gpuTemp \r"

    # Set GPU fan speed
    if ((gpuTemp >= 70)); then
        setFanSpeed 100
    elif ((gpuTemp >= 65)); then
        setFanSpeed 90
    elif ((gpuTemp >= 60)); then
        setFanSpeed 75
    elif ((gpuTemp >= 55)); then
        setFanSpeed 60
    elif ((gpuTemp >= 50)); then
        setFanSpeed 50
    else
        setFanSpeed 45
    fi

    # Interval
    sleep 5
done
