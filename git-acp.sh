#!/bin/bash
#
####################################################################
###This block is used to push Linux Study notes.
  git add .
  git commit -m "$*"
  git push -u origin master
  echo ' ' 
  echo 'Study notes has finished.'
  echo ' '
  
  cp -p ./Gvim_Linux/ /c/Users/lijy花花/Desktop/Linux/LinuxCentos
  cd /c/Users/lijy花花/Desktop/Linux/LinuxCentos
  git add .
  git commit -m "$*"
  git push -u origin master
  echo 'Upload notes has finished.'
#####################################################################
###This block is used to push all files.
# git add .
# git commit -m $1
# git push -u origin master
# echo 'All notes has been pushed successfully.'
######################################################################



