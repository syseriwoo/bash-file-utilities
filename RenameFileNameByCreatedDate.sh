#!/bin/bash

for i in *; do

    BASENAME=$(basename "$i")
    EXTENSION="${BASENAME##*.}"

    if [ $EXTENSION != "sh" ]; then

        DATE_CREATED=$(stat -f "%SB" -t "%Y%m%d_%H%M" "$i")
        NEW_FILENAME="${DATE_CREATED}_${RANDOM}.${EXTENSION}"

        mv -- "$i" "$NEW_FILENAME"

    fi

done
