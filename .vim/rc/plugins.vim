""
" Vundle
""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" stuff
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
Plugin 'skwp/greplace.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'majutsushi/tagbar'
"Plugin 'vim-scripts/vcscommand.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'xolox/vim-misc' " required for vim-session
Plugin 'xolox/vim-session'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'michaeljsmith/vim-indent-object'

" python 
Plugin 'davidhalter/jedi-vim'
Plugin 'tell-k/vim-autopep8'
Plugin 'fisadev/vim-isort'
Plugin 'hynek/vim-python-pep8-indent'

call vundle#end()            " required
filetype plugin indent on    " required

" закрывает окно документации при autocompletion
" autocmd CompleteDone * pclose


""""
"" syntastic
"""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_open = 1
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers=['python', 'flake8', 'pep8']

"""
" ctrlp
""
let g:ctrlp_working_path_mode = 'wa'
let g:ctrlp_cutom_ignore = { 'dir':  '\v[\/](\.git|\.hg|\.svn|__pycache__)$', 'file': '\v\.(exe|so|dll)$' }



"""
" jedi
""
autocmd FileType python setlocal completeopt-=preview
let g:jedi#popup_on_dot = 0

autocmd FileType python setlocal foldmethod=indent


"""
" airline
""
"let g:airline_theme='powerlineish'
set noshowmode
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
"let g:airline#extensions#whitespace#symbol = '!'
if has("gui_running")
	let g:airline_powerline_fonts = 1
endif


"""
" https://github.com/xolox/vim-session
""
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'
let g:session_autosave_periodic = 'yes'
let g:session_persist_colors = 0
let sessionoptions = 'buffers,curdir,folds,help,tabpages,winpos,winsize,resize'

"""
" Autopep8
""
let g:autopep8_disable_show_diff=1


"""
" keymap
""
noremap <silent> <C-\> :NERDTreeToggle <CR>
noremap <silent> <leader>t :TagbarToggle <CR>
map <leader>f <Plug>(easymotion-s)
"autocmd FileType python map <leader>b :Autopep8 <CR>
autocmd FileType python map <buffer> <leader>b :w \| :call Autopep8()<CR>
autocmd FileType python map <leader>s :w \| :Isort <CR>
noremap <leader>e :SyntasticReset \| SyntasticCheck \| :Errors <CR>
