#!/bin/bash
brew install neovim source-highlight tmux koekeishiya/formulae/yabai koekeishiya/formulae/skhd fzf ripgrep ag code-minimap

# Install Prettier and js-beautify
sudo npm install -g prettier js-beautify esctags emmet-ls typescript-language-server

# Install vim-tmux-navigator
if [ ! -d $HOME/.vim/pack/plugins/start/vim-tmux-navigator ]; then
	git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.vim/pack/plugins/start/vim-tmux-navigator
fi

# backup neovim
if [ -d $HOME/.config/nvim ]; then
	rm -rf ~/.local/share/nvim
	cp -rf $HOME/.config/nvim $HOME/.config/nvim.backup
fi
# Install NvChad
NVCHAD_EXAMPLE_CONFIG=y nvim --headless "+q"
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
rm -rf $HOME/.config/nvim/lua/custom
ln -s $PWD/nvchad_custom $HOME/.config/nvim/lua/custom
nvim

# backup tmux.conf
if [ -e $HOME/.tmux.conf ]; then
	cp -rf $HOME/.tmux.conf $HOME/.tmux.conf.backup
fi
ln -s $PWD/tmux/.tmux.conf $HOME/.tmux.conf

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux source $HOME/.tmux.conf

mkdir ~/.config
ln -s skhd ~/.config
ln -s yabai ~/.config

yabai --start-service
skhd --start-service

echo "Finish"
exit 0
