#!/bin/bash

if [[ $(uname) == "Darwin" ]]; then
    SYSTEM="mac"
else
    SYSTEM="linux"
fi

DIR=$(pwd)

for f in common/*; do 
	ln -is $DIR/$f ~/.$(basename $f);
done

for f in $SYSTEM/*; do
	ln -is $DIR/$f ~/.$(basename $f);
done
