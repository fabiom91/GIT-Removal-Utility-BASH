# GIT Removal Utility - BASH

Have you messed up with your repositories and you just want to start a new one without losing your files? Or you just wanna get rid of all those old repositories shared everywhere online? Try my script! :D

This Bash script can be run on any bash console window.
It eliminates all the origin and GIT file from a specific folder or all the sub-folders in which it is contained.

## Usage:

1. copy the script into the main folder of the repository you want to remove all GIT or, if you want to remove the GITs files of multiple repository, place the script into the parent folder

2. open a terminal window then type: `cd path_to_the_script_folder`

3. make the script executable: `chmod 755 remove_git.sh`

4. run the script: `./remove_git.sh`

5. You'll then be prompt to the following screen:

    ```
    ------------------------------------------------------------------------
    *** GIT REMOVAL UTILITY ***
    What do you want to do?
    ------------------------------------------------------------------------
    WARNING: all folders and sub-folders names must NOT contain spaces!
    1 - Remove all GIT in this folder: "folderName"
    2 - Remove all GIT in all subfolders
    0 - Quit Program
    
    ```
    Be aware that in order to work, all the folders MUST not contain any spaces in their name. However, gitHub repositories does not allow any spaces by default.
