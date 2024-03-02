#!/bin/sh

# I DID NOT WRITE THIS SCRIPT, someone on google did :) If I find them again I'll add their github here.

. "${HOME}/.cache/wal/colors.sh"

conffile="$XDG_CONFIG_HOME/mako/config"

# Associative array, color name -> color code.
declare -A colors
colors=(
    ["background-color"]="$background"
    ["text-color"]="$foreground"
    ["border-color"]="$color13"
)

for color_name in "${!colors[@]}"; do
  # replace first occurance of each color in config file
  sed -i "0,/^$color_name.*/{s//$color_name=${colors[$color_name]}/}" $conffile
done

makoctl reload
