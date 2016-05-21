#!/bin/bash

#which voice to use
voice='Victoria'

#greeting variables
h=`date +%H`
day=`date +%A`
greeting=""
dayGreeting=""

#Function to read out text like an old school 80s film
# Think war games or weird science
function textEcho(){
input="$1"
size=${#input}
#say -v $voice "$input" &

for ((i=0; i<=$size; i++)); do

if [[ ${input:$i:1} != " " ]];then
echo -n ${input:$i:1}
else
echo -n " "
fi

sleep 0.04s
done
echo ""

}


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
dayGreeting="The weekend already Hope you're not thinking of doing any extraneous work"
elif [ $h -lt 17 ]; then
dayGreeting="What's on the agenda for today"
fi

#Greeting calls
textEcho "$greeting" & writing=$!
say -v $voice $greeting & speech=$!

wait $writing
wait $speech

if [[ $dayGreeting !=  "" ]];then
textEcho "$dayGreeting" & writing=$!
say -v $voice $dayGreeting & speech=$!

wait $writing
wait $speech

fi