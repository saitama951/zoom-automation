#!/bin/bash

#disables mouse interrupt replace 10 with your mouse id by doing xinput --list

xinput set-int-prop 10 "Device disabled" 8 0

sleep 1s

#disables keyboard interrupt replace 19 with your keyboard id by doing xinput --list
xinput set-int-prop 19 "Device Disabled" 8 0

sleep 2s

#makes your zoom window maximize 
xdotool windowsize $(xdotool getactivewindow) 100% 100%

#opens the participant dialog
xdotool key $(xdotool getactivewindow) alt+u

sleep 2s

#maximizes the participant dialog
xdotool windowsize $(xdotool getactivewindow) 100% 100%

sleep 2s

#moves the mouse cursor to the "more" button and clicks it
#findout the mouse location at the "more" button before hand by doing "xdotool getmouselocation"
#replace the co-ordinates with your co-ordinates.
xdotool mousemove 1333 91 && xdotool click --window $(xdotool getactivewindow) 1

sleep 2s

#this clicks on the "rename" button
#change the co-ordinates here too.
xdotool mousemove 1317 118 click 1 

sleep 2s

#this renames with the desired roll number 
xdotool key $(xdotool getactivewindow) ctrl+a Left 1 7 minus

#clicks on the ok button
xdotool mousemove 766 455 click 1

#closes the participant dialog
xdotool key $(xdotool getactivewindow) alt+F4

#enables your mouse
xinput set-int-prop 10 "Device Enabled" 8 1

sleep 1s

#enables your keyboard interrupt
xinput set-int-prop 19 "Device Enabled" 8 1
