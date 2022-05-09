#!/bin/bash

# Go to home directory 
cd 
# Source development environment
source ./nova_ws/install/setup.bash

# Check if screen session already exists (prevents duplicate roslaunch calls)
if ! screen -list | grep -q "gps_base_node"; then
	# New command with logging, and ROBOT environment variable
	screen -dmS "gps_base_node" bash -c 'ros2 launch ublox_dgnss base.launch.py'
else
    echo "gps_base_node already running!"
fi

