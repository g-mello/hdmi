#!/bin/bash 

dir=$HOME

sound="pcm.!default{ 
type hw
card 0
device 3
} "

> "$dir"/.asoundrc
echo $sound > "$dir"/.asoundrc

case ${1,,} in
    on  ) xrandr --output LVDS1 --off --output HDMI1 --auto
            > "$dir"/.asoundrc
            echo $sound > "$dir"/.asoundrc
            ;;
    off) xrandr --output HDMI1 --off --output LVDS1 --auto 
         rm "$dir"/.asoundrc
         ;;
esac
