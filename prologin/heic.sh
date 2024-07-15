#!/bin/sh

if [ -z "$1" ]; then
    echo "$0: Please retry the command with a folder in parameters"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "$0: Please retry the command with a folder in parameters"
    exit 1
fi

DIR=$1

mkdir "$DIR/output"
mv $DIR/*.png "$DIR/output/"
mv $DIR/*.jpg "$DIR/output/"

echo "Finish convert"
