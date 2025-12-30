ROOT := $(shell sh -c 'pwd')

all:
	git submodule update --init --recursive
	ln -fs ${ROOT}/vimrc ~/.vimrc
	ln -fs ${ROOT}/vim ~/.vim -T

standalone:
	ln -fs ${ROOT}/vimrc.standalone ~/.vimrc

update:
	git submodule update --remote --merge
