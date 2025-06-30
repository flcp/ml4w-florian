#!/bin/bash
FILE=/home/florian/.sens

if [ -f $FILE ]; then
    echo "Setting sensitivity to slow (0.0)" >> ~/log.txt
    hyprctl keyword input:sensitivity 0.0
    hyprctl keyword input:touchpad:scroll_factor 0.2
    rm $FILE
else
    echo "Setting sensitivity to fast (0.7)" >> ~/log.txt
    hyprctl keyword input:sensitivity 0.7
    hyprctl keyword input:touchpad:scroll_factor 1.0
    touch $FILE
fi
