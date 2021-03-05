#!/usr/bin/env bash

# agros-playerctl
# 2021 Brandon Ingli

# Run `playerctl metadata` and enter the first word (up until the first space)
# of the player you want this instance to use.
# If you want to use "any" player, set that flag below and ignore ${PLAYER}.
PLAYER="chromium"
USEANYPLAYER=false

# Name of the icon you want to use. Look through your icons directories for options.
ICON="org.gnome.Music"

# ---

if [[ "$USEANYPLAYER" == true ]]; then
  META=`playerctl metadata --format '{{ title }} by {{ artist }}'`
else
  META=`playerctl metadata -p ${PLAYER} --format '{{ title }} by {{ artist }}'`
fi
if [[ "${META}" != "" ]]; then
  echo "$META | iconName=${ICON}"
else
  echo " "
fi
