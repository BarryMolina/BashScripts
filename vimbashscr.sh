#!/bin/bash
# create new executable bash script and open in vi

# check if filename was passed, else set to default value
if [ $1 ]
then
    filename="$( basename $1 .sh ).sh"
else
    filename="untitled.sh"
fi

# If file doesn't exist, create it 
if [ ! -s $filename ]
then
    echo '#!/bin/bash' > $filename
    chmod 755 $filename
fi

vi $filename
