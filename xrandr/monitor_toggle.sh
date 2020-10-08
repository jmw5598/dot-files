#!/bin/bash

TOGGLE_VALUE_FILE="${HOME}/.config/xrandr/.status"

if [ -e ${TOGGLE_VALUE_FILE} ] ; then
	echo "Toggling off because status is active"
	xrandr --output DP1 --off --right-of eDP1
	rm -r ${TOGGLE_VALUE_FILE}
else
	echo "Toggling on becasue status doesn't exist"
	xrandr --output DP1 --auto --right-of eDP1
	echo "ACTIVE" >> ${TOGGLE_VALUE_FILE}
fi

