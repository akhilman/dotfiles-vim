default: install


bundle/Vundle.vim:
	mkdir -p bundle
	git clone https://github.com/VundleVim/Vundle.vim.git bundle/Vundle.vim

install: bundle/Vundle.vim
	vim +PluginInstall +qall

update: bundle/Vundle.vim
	vim +PluginUpdate +qall
