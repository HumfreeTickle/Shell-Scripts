#!/bin/bash

source ~/shell_scripts/80sTextWriting.sh

#Takes in a project name from the user
echo "Enter Project Name:"
read name

chat "Creating $name project..."

#creates the directory and all sub-directories
textEcho "Making directories..."
mkdir -p ~/Documents/Website/$name/{designIdeas,wireframes_mockups/{wireframe,mockups/{high,low},sketches},images,code/{js/angular,css/sass/{modules,partials,vendors}}}

textEcho "Adding additional content..."
#add all the starting files like index.html to the correct folders
cd ~/Documents/Website/$name/images
touch imageList.txt #List of all the images used within the project

cd ~/Documents/Website/$name/code
touch index.html

# Creates basic template for html file
cat <<EOT >> index.html
<!DOCTYPE html>
<html>
    <head>
        <title>$name Project</title>

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

        <!-- Local JavaScript -->
        <script src="js/main.js"></script>

        <!-- Local CSS -->
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">

    </head>
    <body>

    </body>
</html>
EOT

#Added flair just for fun
textEcho "Html created..."

cd js
touch main.js
textEcho "JavaScript created..."

cd ..
cd css
touch stylesheet.css
textEcho "CSS created..."

cd sass
touch main.scss
textEcho "Sass created..."

# copies my builded up collection of sass modules for ease
textEcho "Importing modules library..."
cp -r ~/Documents/Website/sass_module_library/*scss modules/

#informs the user that the project is finished being created
chat "$name project directory completed sir"
textEcho "Opening project..."

#opens google and searches for images related to project 
open "http://google.com/images?q=$name+website+design+ideas"
open "http://google.com/images?q=$name+inspiration+design+ideas"
open "https://www.siteinspire.com/"

#opens all the code files within Sublime Text
open -a "Sublime Text" ~/Documents/Website/$name/code

