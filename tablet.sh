
#!/bin/sh

#Change DVI-I-1 to what monitor you want from running command: xrandr
MONITOR="DPI"
PAD_NAME='HUION H920 Pad pad'

#undo
xsetwacom --set "$PAD_NAME" Button 1 "key +ctrl +z -z -ctrl" 

#define next 2 however you like, I have mine mapped for erase in krita
xsetwacom --set "$PAD_NAME" Button 2 "key e"
xsetwacom --set "$PAD_NAME" Button 3 "key h"

ID_STYLUS=`xinput | grep "Pen stylus" | cut -f 2 | cut -c 4-5`

xinput map-to-output $ID_STYLUS $MONITOR
