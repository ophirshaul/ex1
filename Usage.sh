#!/bin/sh

touch vs.tmp
printf "Checking Volume Usage Size - "
VS=`df -h|tail +2 |awk '{print $5,$6}' |sed 's/\%//g' > vs.tmp`
for i in `awk '{if ($1 >=85) print $2,"  ",$1"%"}' vs.tmp`;
do
                        if [ ! -z "$i" ] ; then
                echo "Volume high Usage *** $i \n"
        fi

done
