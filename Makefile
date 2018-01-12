# Makefile to copy the files to home directory

.PHONY: all bashfiles gitfiles vimfiles

all: bashfiles gitfiles vimfiles

bashfiles: .bashrc .bash_profile

gitfiles: .gitconfig .gitignore

vimfiles: .vim .vimrc

gvimfiles: vimfiles .gvimrc

.vim:
	mkdir -pv $(HOME)/.vim/{colors,syntax}
	cp -v vim/colors/custom.vim $(HOME)/.vim/colors/
	cp -v vim/syntax/* $(HOME)/.vim/syntax/

.vimrc:
	cp -v vimrc $(HOME)/.vimrc

.gvimrc:
	cp -v gvimrc $(HOME)/.gvimrc

.bashrc:
	cp -v bashrc $(HOME)/.bashrc

.bash_profile:
	cp -v bash_profile $(HOME)/.bash_profile

.gitconfig:
	cp -v gitconfig $(HOME)/.gitconfig

.gitignore:
	cp -v gitignore $(HOME)/.gitignore
