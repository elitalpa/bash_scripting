#!/bin/bash

echo "This script will replace a word with another in a file."
echo "Word to be replaced : "
read firstword
echo "Enter the word you want to replace : "
read secondword
echo "File name or file path : "
read filename

echo -e "The word "'\033[0;31m'$firstword'\033[0m'" will be replaced by "'\033[1;34m'$secondword'\033[0m'" in the file "'\033[1;34m'$filename'\033[0m'
#confirmation
read -p "Are you sure? (Y)" -n 1 -r
echo    
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
	exit 1
fi

echo "Changing..."
sleep 3
echo -en '\033[41m'
# the following line is the command that will do the modification :
sed -i "s/$firstword/$secondword/" "$filename"
echo -e '\033[0m'
echo "Done!"

# -i permanently writes the modification to the file, you may want to use sed without it at first to test