#!/bin/bash

#===============================================================
# this script creates a new log file and opens it with the 
# chosen editor
#===============================================================

##########
# CONFIG #
##########

EDITOR=micro

##########
# SCRIPT #
##########

PWDOLD=$PWD

cd
if [ ! -d "./logs" ]; then
	mkdir "logs"
fi
cd logs

# name log based on curent date
LOGNAME=$(date +"%Y-%m-%d.txt")

# creates new log if one does not already exist for that day
if [ ! -f "./${LOGNAME}" ]; then
	echo "$LOGNAME" | xargs touch
fi

# open log with config'd editor
eval $EDITOR $LOGNAME

# change back to old dir for ~continuity~
cd $PWDOLD
