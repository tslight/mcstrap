#!/bin/bash

TARGET="$1"
OUTSET="$TARGET/usr/local/outset"
HOSTNAME_FILE="$OUTSET/hostname"

while :; do
    read -rep "Please enter a computer name/hostname: " NEW_HOSTNAME
    if [[ ! -z "$NEW_HOSTNAME" ]]; then
	if echo "$NEW_HOSTNAME" > "$HOSTNAME_FILE"; then
	    echo "Successfully wrote $NEW_HOSTNAME to $HOSTNAME_FILE."
	else
	    echo "Failed to write $NEW_HOSTNAME to $HOSTNAME_FILE."
	fi
	break
    fi
done
