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
greeting="Good morning"
elif [ $h -lt 18 ]; then
greeting="Good afternoon"
else
greeting="Good evening"
fi

#Assigns a particular greeting based on whether it's a weekend or weekday
if [ \( $day == 'Sunday' \) -o \( $day == 'Saturday' \) ]; then
dayGreeting="The weekend already. Hope you're not thinking of doing any extraneous work"
elif [ $h -lt 17 ]; then
dayGreeting="What's on the agenda for today"
fi

#Greeting calls
echo $greeting sir
say -v $voice $greeting sir.

if [[ $dayGreeting !=  "" ]];then
echo $dayGreeting 
say -v $voice $dayGreeting
fi

#Loading all other scripts to alias references 
alias mkwp=mkwp.sh
alias lwrCs=lowerCase.sh
alias shutDown=midnightShutDown.sh
alias movies='cd /Volumes/Edwards_Mac/Movies'
alias home='cd /Users/Edwards/'

#alias edwardsHelp='echo mkwp, lwrCs, shutDown, movies, home'
