#!/bin/bash

# Get the list of monitors and their focus status
focused_monitor=$(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name')

# Check which monitor is currently focused and switch to the other
if [ "$focused_monitor" == "HDMI-A-1" ]; then
    # Switch to the other monitor (e.g., DP-1)
    hyprctl dispatch focusmonitor "DP-1"
else
    # Switch back to HDMI-A-1
    hyprctl dispatch focusmonitor "HDMI-A-1"
fi
