#!/bin/env bash
brew tap neovim/neovim
brew install --HEAD neovim
pip2 install --user neovim
ln -s ~/.vimrc ~/.nvimrc
ln -s ~/.vim ~/.nvim

