#!/bin/bash

# Check if mysqld service is running
if systemctl is-active --quiet mysqld; then
    # Active/Running status (Output JSON for Waybar)
    echo '{"text": "󰆼 On", "class": "running", "tooltip": "MySQL Server is Running"}'
else
    # Stopped status
    echo '{"text": "󰆼 Off", "class": "stopped", "tooltip": "MySQL Server is Stopped"}'
fi
