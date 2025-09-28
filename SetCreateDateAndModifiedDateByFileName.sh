#!/bin/bash

for i in *; do
    SetFile -d "${i:4:2}/${i:6:2}/${i:0:4} 00:00:00" -m "${i:4:2}/${i:6:2}/${i:0:4} 00:00:00" "$i";
    echo $i
done
