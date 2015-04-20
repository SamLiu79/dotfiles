#!/bin/sh


dotfiles=`ls dot_*`

# link to dotfiles
for dotfile in $dotfiles; do
    hidden_dotfile=${dotfile/dot_/~/.}
    visible_dotfile=~/dotfiles/$dotfile
    echo $hidden_dotfile $visible_dotfile
    mv "$hidden_dotfile" "$hidden_dotfile.bak"
    ln -s $visible_dotfile $hidden_dotfile
done


# link vim after folder
ln -s ~/dotfiles/vim_after ~/.vim/after
