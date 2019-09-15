#!/bin/bash

if [ $# -gt 0 ]
then
    filename=$1
else
    filename="untitled.htm"
fi

if [ ! -s $filename ]
then
    cp /Users/barrymolina/.scripts/mkhtml/htmlfoundation $filename
fi

mvim $filename


