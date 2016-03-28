all:	update


bundle/Vundle.vim:
	mkdir -p bundle
	git clone https://github.com/VundleVim/Vundle.vim.git bundle/Vundle.vim

update:	bundle/Vundle.vim
	vim +PluginInstall +qall
