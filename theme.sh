#!/bin/bash
(cd $HOME/dotfiles/pywal && pip3 install --user .) && 
export PATH="${PATH}:${HOME}/.local/bin/" &&
wal --theme random &&
(cd $HOME/dotfiles/dmenu_better && sudo make clean install) &&
(cd $HOME/dotfiles/dwm && sudo make clean install) &&
(cd $HOME/dotfiles/slstatus && sudo make clean install) &&
(mkdir $HOME/.config && mkdir $HOME/.config/ranger && cp $HOME/dotfiles/ranger $HOME/.config/ranger) &&
(mkdir $HOME/.config/picom && cp $HOME/dotfiles/picom $HOME/.config/picom)




