#!/bin/bash
# create new executable bash script and open in vi

# check if filename was passed, else set to default value
if [ $1 ]
then
    filename="$( basename $1 .java ).java"
else
    filename="ClassName.java"
fi

# get class name
classname=$( basename $filename .java )

# If file doesn't exist, create it 
if [ ! -s $filename ]
then
    cp /Users/barrymolina/.scripts/mkjava/ClassName.java $filename
else
    echo "File $filename exists"
    exit 0
fi

if [ $filename != 'ClassName.java' ]
then
    sed "s/ClassName/$classname/g" $filename > $filename.new
    rm $filename
    mv $filename.new $filename
fi

mvim $filename
