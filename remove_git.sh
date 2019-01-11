#!/bin/bash

deleteAll () {
for folder in $@; do
    if [ -d "$folder" ]; then
        echo "...PROCESSING $folder"
        cd "$folder"
        status=$(git status 2>&1)
        if [ $? -eq 0 ]; then
            echo "...REMOVING GIT from $folder"
            git remote remove origin
            rm -rf .git
            rm -rf .gitignore
            subArgs=$(ls)
            deleteAll $subArgs
        fi
        cd ..
        pwd
    fi
    echo ""
done
}


args=$(ls)
currentFolder=$(pwd | rev | cut -d "/" -f1 | rev)
echo " ---------------------------------------- "
echo " *** GIT REMOVAL UTILITY *** "
echo " What do you want to do? "
echo " ---------------------------------------- "
echo " WARNING: all folders and sub-folders names must NOT contain spaces!"
# anyway gitHub repositories allow no spaces in their names.
echo " 1 - Remove all GIT in this folder: \"$currentFolder\""
echo " 2 - Remove all GIT in all subfolders "
echo " 0 - Quit program "
while true; do
    read choice
    if [ $choice -eq 1 ]; then
        deleteAll "$currentFolder"
        echo "DONE!"
    elif [ $choice -eq 2 ]; then
        deleteAll "$args"
        echo "DONE!"
    elif [ $choice -eq 0 ]; then
        echo ""
        echo "finished!"
        break
    else
        echo "invalid choice"
    fi
    echo ""
    echo "What do you want to do? (type 0 to quit)"
    echo " 1 - Remove all GIT in this folder: \"$currentFolder\""
    echo " 2 - Remove all GIT in all subfolders "
done
echo ""
exit 0
