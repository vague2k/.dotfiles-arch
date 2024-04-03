if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
    updates_arch=0
fi

if ! updates_aur=$(yay -Qua | wc -l); then
    updates_aur=0
fi

updates=$(("$updates_arch" + "$updates_aur"))

# Return as json to use in custom waybar module

if [ "$updates" -gt 0 ]; then
    printf '{"text": "%s", "alt": "%s", "tooltip": "%s Updates", "class": ""}' "$updates" "$updates" "$updates"
else
    printf '{"text": "0", "alt": "0", "tooltip": "0 Updates", "class": ""}'
fi

