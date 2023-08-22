#!/usr/bin/env bash

# initializing wallpaper daemon
swww init &
# setting wallapper
swww img /home/carson/Wallpapers/snowcar.jpg

nm-applet --indicator &

# the bar
waybar &

# dunst notifications
dunst
