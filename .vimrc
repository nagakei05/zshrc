""""""""""""""""""""""""""""""""""""""""""""""""" Vundle Settings START
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"" PLUGINS
Plugin 'atweiden/vim-dragvisuals'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'
Plugin 'rakr/vim-one'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""" Vundle Settings END


colorscheme one

set background=dark

set number
set relativenumber

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=0
set autoindent

syntax on

" auto complete bracets
inoremap( ()<left>
inoremap[ []<left>
inoremap' ''<left>
inoremap" ""<left>

vmap <expr> <LEFT> DVB_Drag('left')
vmap <expr> <RIGHT> DVB_Drag('right') 
vmap <expr> <DOWN> DVB_Drag('down') 
vmap <expr> <UP> DVB_Drag('up')

autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

set list listchars=tab:->,trail:·,nbsp:·,eol:↩︎,extends:»,precedes:«

let g:airline_solarized_bg='dark'

let g:ale_fixers = {
      \ 'javascript': ['prettier'],
      \ 'python': ['autopep8', 'isort'],
      \}

" Highlight spaces and tabs
function! SOLSpaceHilight()
    syntax match SOLSpace "^\s\+" display containedin=ALL
    highlight SOLSpace term=underline ctermbg=237
endf

function! JISX0208SpaceHilight()
    syntax match JISX0208Space "　" display containedin=ALL
    highlight JISX0208Space term=underline ctermbg=DarkCyan
endf

if has("syntax")
    syntax on
        augroup invisible
        autocmd! invisible
        autocmd BufNew,BufRead * call SOLSpaceHilight()
        autocmd BufNew,BufRead * call JISX0208SpaceHilight()
    augroup END
endif

" toggle line numbers when switching into Different windows, Insert mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" fix pop up color for dark theme
highlight Pmenusel ctermbg=white guifg=white guibg=gray
highlight Pmenu ctermbg=darkgray guifg=white guibg=darkgray
