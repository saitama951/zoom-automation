#!/bin/bash

sleep 2s

xdotool windowsize $(xdotool getactivewindow) 100% 100%

xdotool key $(xdotool getactivewindow) alt+u

sleep 1s

xdotool windowsize $(xdotool getactivewindow) 100% 100%

sleep 1s

xdotool mousemove 1327 58 && xdotool click --window $(xdotool getactivewindow) 1



xdotool mousemove 1317 118 click 1 
#&& xdotool click --window $(xdotool getactivewindow)1

sleep 1s
xdotool key $(xdotool getactivewindow) ctrl+a Left 1 5 minus

xdotool mousemove 766 455 click 1

xdotool key $(xdotool getactivewindow) alt+F4
