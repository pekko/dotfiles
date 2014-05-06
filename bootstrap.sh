#!/bin/bash

function usage {
	echo "Usage: "$0" [linux|mac]"
	exit 1
}

if [[ $# < 1 ]]; then
	usage
fi

SYSTEM=$1
DIR=$(pwd)

for f in common/*; do 
	ln -is $DIR/$f ~/.$(basename $f);
done

for f in $SYSTEM/*; do
	ln -is $DIR/$f ~/.$(basename $f);
done

ln -fs $DIR/special/pecko.zsh-theme $HOME/.oh-my-zsh/themes/pecko.zsh-theme
