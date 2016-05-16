#!/bin/bash

#Takes in a project name from the user
echo Enter Project Name:
read name

echo Creating $name project directory…
#Verbal response from the computer (mostly just for fun)
say -v "Victoria" Creating $name project directory…

#creates the directory and all sub-directories
mkdir -p ~/Documents/Website/$name/{designIdeas,wireframes_mockups/{wireframe,mockups/{high,low},sketches},images,code/{js/angular,css/sass/{modules,partials,vendors}}}

#add all the starting files like index.html to the correct folders
cd ~/Documents/Website/$name/images
touch imageList.txt #List of all the images used within the project

cd ~/Documents/Website/$name/code
touch index.html
cd js
touch main.js
cd ..
cd css
touch stylesheet.css
cd sass
touch main.scss

#informs the user that the project is finished being created
echo $name project directory completed sir
say -v "Victoria" $name Project directory completed sir

#opens folder in finder
open -a Finder ~/Documents/Website/$name

#opens all the code files within Sublime Text
open -a "Sublime Text" ~/Documents/Website/$name/code

#opens google and searches for images related to project 
open "http://google.com/images?q=$name+website+design+ideas"
open "http://google.com/images?q=$name+inspiration+design+ideas"