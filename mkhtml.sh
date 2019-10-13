#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu" ]]
then
    vimVersion="gvim"
elif [[ "$OSTYPE" == "darwin"* ]]
then
    vimVersion="mvim"
fi

if [ $# -gt 0 ]
then
    filename=$1
else
    filename="untitled.htm"
fi

if [ ! -s $filename ]
then
    cp ~/.scripts/mkhtml/htmlfoundation $filename
fi

$vimVersion $filename



