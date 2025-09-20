#!/bin/bash

# Waybar startup script for Hyprland
# This script launches Waybar with the Hyprland-specific configuration

# Kill any existing Waybar instances
pkill waybar

# Wait a moment for processes to terminate
sleep 0.5

# Launch Waybar with Hyprland config
waybar -c ~/.config/waybar/config-hyprland -s ~/.config/waybar/style.css &

# Optional: Log output for debugging
# waybar -c ~/.config/waybar/config-hyprland -s ~/.config/waybar/style.css > ~/.config/waybar/waybar.log 2>&1 &
