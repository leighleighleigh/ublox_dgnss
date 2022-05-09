#!/bin/bash
# Sends Ctrl+C to running gps_base_node screen session

# Check if screen session already exists
if screen -list | grep -q "gps_base_node"; then
    # Send stop command
    screen -S "gps_base_node" -p 0 -X stuff "^C"
else
    echo "gps_base_node not running!"
fi


