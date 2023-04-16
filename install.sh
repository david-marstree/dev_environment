#!/bin/bash
brew install source-highlight

# Install Vim-plug
if [ ! -e $HOME/.vim/autoload/plug.vim ]
then
	curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Install Vundle
if [ ! -e $HOME/.vim/bundle/Vundle.vim ]
then
	git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi

# HTML Pathogen Install
if [ ! -e $HOME/.vim/autoload/pathogen.vim ]
then
	curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	git clone https://github.com/ludovicchabant/vim-gutentags.git ~/.vim/bundle

fi

if [ ! -d $HOME/.pack/plugins/start/vim-tmux-navigator ]
then
	git clone https://github.com:christoomey/vim-tmux-navigator.git ~/.vim/pack/plugins/start/vim-tmux-navigator
fi

# bankup vimrc
if [ -e $HOME/.vimrc ]
then
	cp -rf $HOME/.vimrc $HOME/.vimrc.backup
fi
ln -s $PWD/vim/.vimrc $HOME/.vimrc

# Install Tmux
brew install tmux
# bankup tmux.conf
if [ -e $HOME/.tmux.conf ]
then
	cp -rf $HOME/.tmux.conf $HOME/.tmux.conf.backup
fi
ln -s $PWD/tmux/.tmux.conf $HOME/.tmux.conf

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux source $HOME/.tmux.conf
vim -E -s -u "$HOME/.vimrc" +PlugInstall +qall
vim -E -s -u "$HOME/.vimrc" +PluginInstall +qall


# Install Yabai
brew install koekeishiya/formulae/yabai
# Install SKHD
brew install koekeishiya/formulae/skhd

mkdir ~/.config
cp -rf skhd ~/.config
cp -rf yabai ~/.config

brew services restart yabai
brew services restart skhd

echo "Finish"
exit 0
