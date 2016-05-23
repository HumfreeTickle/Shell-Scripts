#!/bin/bash

#which voice to use
voice='Victoria'

#greeting variables
h=`date +%H`
day=`date +%A`
greeting=""
dayGreeting=""

#Assigns the greeting depending on time of day
if [ $h -lt 12 ]; then
greeting="Good morning sir"
elif [ $h -lt 18 ]; then
greeting="Good afternoon sir"
else
greeting="Good evening sir"
fi

#Assigns a particular greeting based on whether it's a weekend or weekday
if [ \( $day == 'Sunday' \) -o \( $day == 'Saturday' \) ]; then
dayGreeting="The weekend already."
elif [ $h -lt 17 ]; then
dayGreeting="What's on the agenda for today"
fi

#Greeting calls

source ~/shell_scripts/80sTextWriting.sh
chat "$greeting" 


if [[ $dayGreeting !=  "" ]];then
chat "$dayGreeting" 

fi
