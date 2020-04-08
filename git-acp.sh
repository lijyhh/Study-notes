#!/bin/bash
git add .
git commit -m $1
git push -u origin master
echo 'Study notes has finished.'

cp ./Gvim_Linux/Linux学习笔记.md /c/Users/lijy花花/Desktop/Linux/LinuxCentos
cd /c/Users/lijy花花/Desktop/Linux/LinuxCentos
git add .
git commit -m $1
git push -u origin master
echo 'Download notes has finished.'
