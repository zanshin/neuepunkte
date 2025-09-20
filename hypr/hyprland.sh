#!/bin/bash

# Hyprland startup script
# This script helps launch Hyprland with proper environment setup

# Set environment variables for Wayland
export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=Hyprland

# Qt applications
export QT_QPA_PLATFORM=wayland
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1

# GTK applications
export GDK_BACKEND=wayland

# Mozilla applications
export MOZ_ENABLE_WAYLAND=1

# Java applications
export _JAVA_AWT_WM_NONREPARENTING=1

# Cursor theme
export XCURSOR_SIZE=24

# Start Hyprland
exec Hyprland
