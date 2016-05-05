#!/bin/bash

# Changes text files from uppercase letters to lowercase
# TODO make the files more generic

for i in *.txt; do mv "$i" "`echo $i| tr [A-Z] [a-z]`"; done

#if(filename has a space)
#for i in *.html; do mv "$i" "`echo $i| tr ' ' '_'`"; done
