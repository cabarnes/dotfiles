#!/bin/bash

echo -n 'Checking for vim...'
dpkg -s vim &> /dev/null
if [ $? -eq 0 ]; then
	echo 'success'
else
	dpkg -s vim-gnome &> /dev/null
	if [ $? -eq 0 ]; then
		echo 'success'
	else
		echo 'error: not found'
		exit -1
	fi
fi

echo -n 'Installing Vundle...'
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim &> /dev/null
if [ $? -eq 0 ]; then
	echo 'done'
else
	echo 'error: unable to install'
	exit -1
fi

echo -n 'Installing .vimrc...'
cp -a vim/.vimrc ~/
if [ $? -eq 0 ]; then
	echo 'done'
else
	echo 'error: unable to install'
	exit -1
fi

echo -n 'Installing vim plugins...'
vim +PluginInstall +qall
if [ $? -eq 0 ]; then
	echo 'done'
else
	echo 'error: unable to install'
	exit -1
fi

# this coloscheme isn't available until plugins are installed
echo 'colorscheme wombat' >> ~/.vimrc

echo 'dotfiles installed successfully'
exit 0
