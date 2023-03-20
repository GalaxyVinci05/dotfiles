#!/bin/bash

~/.local/bin/set_layout.sh &
~/.local/bin/xsetup.sh &
exec xmonad
