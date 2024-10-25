#!/usr/bin/env bash
# changeVolume

# Arbitrary but unique message tag
msgTag="myvolume"

# Change the volume using alsa(might differ if you use pulseaudio)
# pamixer -c 0 set Master "$@" > /dev/null

if [ $1 == "raise" ]; then
    pamixer -u && pamixer -i 5
elif [ $1 == "lower" ]; then
    value=$(pamixer --get-volume)
    newValue=$((value-5))

    if [[ newValue -eq 0 ]]; then
	pamixer -d 5 && pamixer -t
    elif [[ value -eq 0 ]]; then
	return
    else
        pamixer -u && pamixer -d 5
    fi
elif [ $1 == "mute-toggle" ]; then
    pamixer -t
else
    echo "invalid action"
fi

# Query amixer for the current volume and whether or not the speaker is muted
volume="$(pamixer --get-volume-human)"

if [[ $volume == 0 || "$volume" == "muted" ]]; then
    # Show the sound muted notification
    dunstify -a "changeVolume" -u low -i audio-volume-muted -h string:x-dunst-stack-tag:$msgTag "Volume muted" 
else
    # Show the volume notification
    dunstify -a "changeVolume" -u low -i audio-volume-high -h string:x-dunst-stack-tag:$msgTag \
    -h int:value:"$volume" "Volume: ${volume}"
fi

# Play the volume changed sound
canberra-gtk-play -i audio-volume-change -d "changeVolume"
