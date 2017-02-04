"""
" powerline
""
if has("python3") && $COLORTERM == "truecolor"
python3 << EOF
try:
    from powerline.vim import setup as powerline_setup
except:
    pass
else:
    powerline_setup()
    del powerline_setup
    vim.command("set laststatus=2")
    vim.command("set t_Co=256")
EOF
endif


"""
" Color scheme and gui options
""

if has("gui_running")
    " disabling garbage in gvim
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar

    colors evening
    highlight Pmenu guibg=#000000 guifg=#999999 gui=bold
    highlight PmenuSel guibg=#0000aa guifg=#ffffff gui=bold
    set lines=30 columns=86
    set guifont=Liberation\ Mono\ for\ Powerline\ 12
else
    colors torte
    highlight Pmenu ctermfg=gray ctermbg=0
    highlight PmenuSel ctermfg=white ctermbg=blue
    highlight Visual term=reverse cterm=reverse guibg=Grey
endif


"line number
set number
highlight LineNr ctermfg=gray guifg=gray

