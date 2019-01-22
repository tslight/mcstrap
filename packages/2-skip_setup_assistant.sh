#!/bin/bash

IFS=""
TARGET="$1"
FILES=(
    "$TARGET/var/db/.AppleSetupDone"
    "$TARGET/private/var/db/.AppleSetupDone"
    "$TARGET/Library/Receipts/.SetupRegComplete"
)

for file in "${FILES[@]}"; do
    if [[ ! -f "$file" ]]; then
	if touch "$file"; then
	    echo "Successfully created $file."
	else
	    echo "Failed to create $file."
	fi
    else
	echo "$file already exists."
    fi
done
