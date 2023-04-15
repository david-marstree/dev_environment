#!/bin/bash
# Install Vim-plug
if [ ! -e $HOME/.vim/autoload/plug.vim ]
then
	curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
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
fi

# bankup vimrc
if [ -e $HOME/.vimrc ]
then
	cp -rf $HOME/.vimrc $HOME/.vimrc.backup
fi
ln -s $PWD/.vimrc $HOME/.vimrc
vim -E -s -u "$HOME/.vimrc" +PlugInstall +qall
vim -E -s -u "$HOME/.vimrc" +PluginInstall +qall

echo "Finish"
exit 0
