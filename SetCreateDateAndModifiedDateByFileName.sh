#!/bin/bash

# Expects: YYYYMMdd_HHmm_XXXX.*
# YYYY = 0:4
# dd = 6:2
# MM = 4:2
# HH = 9:2
# mm = 11:2


for i in *; do
    SetFile -d "${i:4:2}/${i:6:2}/${i:0:4} 00:00:00" -m "${i:4:2}/${i:6:2}/${i:0:4} ${i:9:2}:${i:11:2}:00" "$i";
    echo $i
done
