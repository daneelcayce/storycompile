#! /bin/bash

# storycompile.sh
# pulls text from specified files into a single output text file
# usage: "storycompile <directory>"
# requires .storycompile in the project directory

# test positional parameters

# first, make sure $1 exists at all
if [ "$1" == "" ]; then
  echo "storycompile.sh"
  echo "Usage: ./storycompile.sh <directory>"
  echo "Please supply a directory."
  exit 4 #clean exit technically but the script couldn't do anything.
fi

# goto directory and test for .storycompile
# currently assuming that $1 is a proper directory, will do failsafe later
cd $1
if [ -e .storycompile ]; then
  # create and clear file, then dump .storycompile's files in
  touch compiled.txt
  > compiled.txt
  while IFS= read -r line
  do
    cat $line >> compiled.txt
    echo "###" >> compiled.txt
  done < .storycompile
  wc -w compiled.txt

else
  echo "Error: .storycompile not found in directory"
  exit 4
fi

exit
