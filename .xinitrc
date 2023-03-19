#export DESKTOP_SESSION=plasma
#exec startplasma-x11

~/.local/bin/set_layout.sh &
#picom -f &
xrandr --output "DVI-I-2" --pos 1920x0 --primary --output "DVI-I-3" --pos 0x0 &
exec xmonad
