# Makefile to copy the files to home directory

.PHONY: all bashfiles gitfiles vimfiles

all: bashfiles gitfiles vimfiles

bashfiles: .bashrc .bash_profile

gitfiles: .gitconfig .gitignore

vimfiles: .vim .vimrc

.vim:
	mkdir -pv $(HOME)/.vim
	cp -Rv vim/* $(HOME)/.vim/

.vimrc:
	cp -v vimrc $(HOME)/.vimrc

.bashrc:
	cp -v bashrc $(HOME)/.bashrc

.bash_profile:
	cp -v bash_profile $(HOME)/.bash_profile

.gitconfig:
	cp -v gitconfig $(HOME)/.gitconfig

.gitignore:
	cp -v gitignore $(HOME)/.gitginore
