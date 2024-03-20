#!/bin/bash
brew install neovim source-highlight tmux koekeishiya/formulae/yabai koekeishiya/formulae/skhd fzf ripgrep ag code-minimap

# Install Prettier and js-beautify
sudo npm install -g prettier js-beautify esctags emmet-ls typescript-language-server swagger-ui-watcher

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

# Install OPENAI_API
openai=$(cat ~/.profile | grep OPENAI)
if [ "$openai" == "" ]; then
	export OPENAI_API_KEY='d15aa291f3574cf4998bed887c9ff0aa'
	export OPENAI_API_BASE='https://lemontree-openai.openai.azure.com'
	export OPENAI_API_TYPE='azure'
	export OPENAI_API_VERSION='2023-05-15'
	export OPENAI_API_AZURE_ENGINE='gpt-35-turbo-david'

	echo "export OPENAI_API_KEY='d15aa291f3574cf4998bed887c9ff0aa'" >>~/.profile
	echo "export OPENAI_API_BASE='https://lemontree-openai.openai.azure.com'" >>~/.profile
	echo "export OPENAI_API_TYPE='azure'" >>~/.profile
	echo "export OPENAI_API_VERSION='2023-05-15'" >>~/.profile
	echo "export OPENAI_API_AZURE_ENGINE='gpt-35-turbo-david'" >>~/.profile
fi

echo "Finish"
exit 0
