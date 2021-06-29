#!/bin/zsh
(sudo apt install git python3-pip ranger libx11-dev libxft-dev libxinerama-dev libxft-dev make) &&
(cd $HOME/dotfiles/pywal && pip3 install --user . ) &&
(cd $HOME/dotfiles && cp $HOME/dotfiles/.zshrc $HOME/.zshrc) &&
#(cat export PATH="${PATH}:${HOME}/.local/bin/" > $HOME/.zshrc) &&
wal --theme random &&
#(sed -i 's/USER/$HOME/g' $HOME/dotfiles/dwm/config.def.h) &&
(./shel.sh) &&
(cp $HOME/dotfiles/dwm/config.def.h $HOME/dotfiles/dwm/config.h) &&
(cd $HOME/dotfiles/dmenu_better && sudo make clean install) &&
(cd $HOME/dotfiles/dwm && sudo make clean install) &&
(cd $HOME/dotfiles/slstatus && sudo make clean install) &&
(cp -r $HOME/dotfiles/ranger $HOME/.config) &&
(cp -r $HOME/dotfiles/picom $HOME/.config) &&
(print type your password and change shel to zsh by typing /bin/zsh && chsh && /bin/zsh) &&



