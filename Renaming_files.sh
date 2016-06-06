#!/bin/bash

#  Renaming_files.sh
#  
#
#  Created by Stephen Larkin on 27/05/2016.
#

# need to find a way to speed up the 80s writing stuff
source ~/shell_scripts/80sTextWriting.sh
textEcho "Show name..."
read name

textEcho "Season number..." 
read season

textEcho "Starting episode number..."
read episode

textEcho "Extension..."
read ext

# makes sure the externsion is valid
#if [[ "$ext" != ".*" ]]; then
#let "$ext"="."+"$ext"
#fi

textEcho "$name S0$season E0$episode$ext"
textEcho "Confirm..."

read confirmation

#if [[ ${confirmation:1:1} == "y" ]]; then
textEcho "Renaming..."
for i in *$ext; do
#    Check to see if the number is in double digits
#    if yes then remove the 0 before the number
    mv "$i" "$name S0$season E0$episode$ext";
    let episode=episode+1;
done

ls
#fi
