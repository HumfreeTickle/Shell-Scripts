#!/bin/bash

hour=date '+%H'

if [[ $hour -ge 20 ]]; 
then
 echo $hour + 4
else
 echo "too early"
fi

