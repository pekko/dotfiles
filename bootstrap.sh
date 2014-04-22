#!/bin/bash

DIR=$(pwd)
for f in common/*; do 
	ln -s $DIR/$f ~/.$(basename $f);
	# rm ~/.$(basename $f);
done

ln -s $DIR/common/pecko.zsh-theme $HOME/.oh-my-zsh/themes/pecko.zsh-theme