#!/bin/bash

for ((count = 0; count < 3; count++))
do
utime=$EPOCHSECONDS
(echo 'AUTH IT2017year'; echo "SET utime $utime"; echo "EXPIRE utime 3") | redis-cli -p 1111
echo "SET"
(echo 'AUTH IT2017year'; echo 'GET utime') | redis-cli -p 1111
sleep 3
done
