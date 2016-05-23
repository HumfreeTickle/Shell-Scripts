#!/bin/bash

#which voice to use
voice='Victoria'

# Script to read out text like an old school 80s film
# Think war games or weird science

function chat(){
# Calls the two functions within separte shell instance
# Still need to figure out how to get rid of the "job id's"

textEcho "$1" & writing=$!
voiceEcho "$1" & speech=$!

# Stops the functions from preceeding until both have finished
wait $writing
wait $speech

}

# Adds each individula letter to the terminal shell
function textEcho(){

input="$1"
size=${#input}

timeDelay=0.04s

for ((i=0; i<=$size; i++)); do

# Checks to see if the character is whitespace or not. If it is, whitespace is added to the shell line since it will be skipped otherwise
if [[ ${input:$i:1} != " " ]];then
echo -n ${input:$i:1}
else
echo -n " "
fi

# Delays the next letter being placed to give it a more fluid feeling.
if [[ ${input:$i:1} == "."  ]];then
# Used to allow a break in the text that is more in line with the voice output
timeDelay=0.9s
elif [[ ${input:$i:1} == ","  ]];then
# Similar to the fullstop break except shorter time frame
timeDelay=0.5s
else
timeDelay=0.04s
fi


sleep "$timeDelay"
done
# Skips to the next line when everything is finished
echo ""

}

# Reads out the text that is being display in the console to the user
function voiceEcho(){
input="$1"
say -v $voice "$1" 

}