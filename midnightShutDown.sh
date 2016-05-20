#!/bin/bash

hour=date '+%H'
minute=date '+%M'

if [[ $hour -eq 24 -a $minute -eq '00' ]]; 
then
 echo 'Time to shutdown for the night'
fi

