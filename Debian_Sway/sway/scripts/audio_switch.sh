#!/bin/bash

# Define the two audio output sinks
SINK1="alsa_output.pci-0000_06_00.6.analog-stereo"
SINK2="alsa_output.usb-SteelSeries_Arctis_Nova_3-00.analog-stereo"

# Get the current default sink
CURRENT_SINK=$(pactl info | grep "Default Sink" | awk '{print $3}')

# Check if the current sink is SINK1, if so, switch to SINK2, else switch to SINK1
if [ "$CURRENT_SINK" == "$SINK1" ]; then
    pactl set-default-sink "$SINK2"
    echo "Switched to $SINK2"
else
    pactl set-default-sink "$SINK1"
    echo "Switched to $SINK1"
fi

