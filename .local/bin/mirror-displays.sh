#!/bin/bash
# Workaround for https://bugzilla.xfce.org/show_bug.cgi?id=11712
# If it doesn't work, run xrandr -q and edit display names below

xrandr --output eDP --auto --primary
xrandr --output HDMI-A-0 --auto --same-as eDP
