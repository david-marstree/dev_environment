#!/bin/bash

brew install source-highlight
# Install Tmux
brew install tmux
# Install Yabai
brew install koekeishiya/formulae/yabai
# Install SKHD
brew install koekeishiya/formulae/skhd
# Install fzf and ripgrep
brew install fzf
brew install ripgrep

# Install Prettier and js-beautify
sudo npm install -g prettier
sudo npm install -g js-beautify

# Install Vim-plug
if [ ! -e $HOME/.vim/autoload/plug.vim ]
then
	curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim;
fi

# Install Vundle
if [ ! -e $HOME/.vim/bundle/Vundle.vim ]
then
	git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim;
fi

# HTML Pathogen Install
if [ ! -e $HOME/.vim/autoload/pathogen.vim ]
then
	curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim;
	git clone https://github.com/ludovicchabant/vim-gutentags.git ~/.vim/bundle;
fi

# Install vim-tmux-navigator
if [ ! -d $HOME/.pack/plugins/start/vim-tmux-navigator ]
then
	git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.vim/pack/plugins/start/vim-tmux-navigator;
fi

# Install vim-indent-rainbow
if [ ! -e $HOME/.vim/autoload/rainbow.vim ]
then
	curl -fLo $HOME/.vim/autoload/rainbow.vim --create-dirs https://raw.githubusercontent.com/adi/vim-indent-rainbow/main/autoload/rainbow.vim;
fi
if [ ! -e $HOME/.vim/autoload/togglerb.vim ]
then
	curl -fLo $HOME/.vim/autoload/tooglerb.vim --create-dirs https://raw.githubusercontent.com/adi/vim-indent-rainbow/main/autoload/togglerb.vim;
fi

# bankup vimrc
if [ -e $HOME/.vimrc ]
then
	cp -rf $HOME/.vimrc $HOME/.vimrc.backup;
fi
ln -s $PWD/vim/.vimrc $HOME/.vimrc;

# backup tmux.conf
if [ -e $HOME/.tmux.conf ]
then
	cp -rf $HOME/.tmux.conf $HOME/.tmux.conf.backup;
fi
ln -s $PWD/tmux/.tmux.conf $HOME/.tmux.conf;

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux source $HOME/.tmux.conf;
vim -E -s -u "$HOME/.vimrc" +PlugInstall +qall;
vim -E -s -u "$HOME/.vimrc" +PluginInstall +qall;



mkdir ~/.config;
ln -s skhd ~/.config;
ln -s yabai ~/.config;

#brew services restart yabai
yabai --start-service;
#brew services restart skhd
skhd --start-service;



echo "Finish";
exit 0;
