"
" Welcome to my init.vim!
"
source $HOME/.config/nvim/plug-config/coc.vim

" Just to get it out of the way
set noerrorbells
set syntax
set encoding=utf-8
filetype plugin on
set nocompatible

" Numbers and relative numbers
set nu
set rnu

" Tabs and spaces
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" mid-search highlighting and with smartcase
set hlsearch
set incsearch
set ignorecase
set smartcase

" scrolling, wrapping, and linebreaking
set scrolloff=999
set sidescroll=15
set sidescroll=1
set nowrap

" set linebreak

" swap files and undo
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set updatetime=50

" Plugins
call plug#begin('~/.nvim/plugged')

" Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-python/python-syntax'

Plug 'christoomey/vim-tmux-navigator'
Plug 'vimwiki/vimwiki'

Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color'

call plug#end()
let g:coc_node_patch = "/usr/local/"

" Shortcuts!
let mapleader=" "
nnoremap <leader>pv :NERDTreeToggle<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <silent><leader>z :Goyo<CR>
nnoremap <silent> <C-p> :Files<CR>

nnoremap <leader>`p o``` python<CR>```<Esc>O
nnoremap <leader>`j o``` java<CR>```<Esc>O
nnoremap <leader>`c o``` cpp<CR>```<Esc>O
nnoremap <leader>`s o``` sh<CR>```<Esc>O

nnoremap <leader>y<leader> "+y
nnoremap <leader>yy<leader> "+yy
nnoremap <leader>p<leader> "+p
nnoremap <leader>wp :w !python<CR>
nnoremap <leader>ka :!tmux kill-server<CR>
nnoremap <leader>ks :!tmux kill-session<CR>
nnoremap <leader>kw :!tmux kill-window<CR>
nnoremap <leader>kp :!tmux kill-pane<CR>

nnoremap <leader>gs :G<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>
" Colors! :))) ------------------
colorscheme gruvbox
set termguicolors
set background=dark
let g:airline_theme='gruvbox'
hi Normal guibg=NONE ctermbg=NONE
highlight clear SignColumn

let g:python_highlight_all = 1
"Syntastic settings -------------
let g:syntastic_java_checkers = ['checkstyle']
let g:syntastic_java_checkstyle_classpath = './checkstyle-8.4-all.jar'
let g:syntastic_java_checkstyle_conf_file = './checkstyle.xml'

let g:syntastic_python_checkers = ['flake8']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"--------------------------------

"VimWiki Options
let vimwiki = {}
let vimwiki.path = '~/ExtremeSSD_NTFS/wiki/migwiki'
let vimwiki.syntax = 'markdown'
let vimwiki.ext = '.md'
let vimwiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'sh': 'sh', 'java': 'java'}

let g:vimwiki_list = [vimwiki]


"Limelight/Goyo settings
" Including other paragraphs
 let g:limelight_paragraph_span = 3

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

function! s:goyo_enter()
    if executable('tmux') && strlen($TMUX)
        silent !tmux set status off
        silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
    endif
    set noshowmode
    set noshowcmd
    set scrolloff=999
    Limelight
endfunction

function! s:goyo_leave()
    if executable('tmux') && strlen($TMUX)
        silent !tmux set status on
        silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
    endif
    set showmode
    set showcmd
    Limelight!
    source ~/.config/nvim/init.vim
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

