#! /bin/bash
CFG_DIR=`pwd`

cd
if [ -d .vim ]
then
	echo ".vim exists. Stopping."
	exit 1
fi
mkdir .vim
mkdir .vim/plugin
mkdir .vim/colors

cd ~/.vim/plugin
ln -s $CFG_DIR/cscope_maps.vim cscope_maps.vim
ln -s $CFG_DIR/ftplugin ftplugin

cd ~/.vim/colors
ln -s $CFG_DIR/Zenburn/colors/zenburn.vim zenburn.vim

cd $CFG_DIR
