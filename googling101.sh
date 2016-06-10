#!/bin/bash

#TODO add in voice
# Extract out the greeting into a sparate file
# I need to create one centralised place for EDWARDS to grab the rest of the functions/commands

# add some form of parsing which can tell
#    1. if (.com/.ie/etc) is used and instead of putting it through google search, go directly to website
#    2. add in image recognition; google image/ google image of ... should search for images rather then websites
#    3. maybe a way to track most viewed sites so if I write "google netflix" it'll just add the ".com" and go directly to the website instead.
source ~/shell_scripts/80sTextWriting.sh

google(){
search=""
chat "Googling: $@"

# takes each entered term and concatinates them together in googles search format
for term in "$@"; do
search="$search%20$term"
done
open "http://www.google.com/search?q=$search"
}


download(){
searchSource=""
chat "Searching for $@"

# takes each entered term and concatinates them together in googles search format
for term in "$@"; do
searchSource="$searchSource+$term"
done
searchSource="$searchSource&Torrent_sort=-seeders"

open "https://isohunt.to/torrents/?ihq=$searchSource"
}
