#!/bin/bash

if [ "$USER" == root]; then
   echo "You are the su"
else
	echo "You are not the su, you are $USER"

fi
