#!/bin/bash


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