#!/bin/bash
setFanSpeed() {
    nvidia-settings -a GPUFanControlState=1 -a GPUTargetFanSpeed="$1" > /dev/null
}

cleanup() {
    nvidia-settings -a GPUFanControlState=0
    exit
}

declare -i gpuTemp

# Set cleanup function (clean up and exit when interrupted)
trap cleanup 1 2 3 15 20

# Check if nvidia-settings is installed, and install if not available
if ! command -v nvidia-settings >/dev/null 2>&1; then
    echo "nvidia-settings is not installed. Attempting to install..."
    if command -v apt-get >/dev/null 2>&1; then
        sudo apt-get update
        sudo apt-get install nvidia-settings
    elif command -v yum >/dev/null 2>&1; then
        sudo yum install nvidia-settings
    elif command -v dnf >/dev/null 2>&1; then
        sudo dnf install nvidia-settings
    elif command -v pacman >/dev/null 2>&1; then
    	sudo pacman -S nvidia-settings
    else
        echo "Unable to install nvidia-settings. Please install it manually."
        exit 1
    fi
fi

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
