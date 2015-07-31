" -- Configuration --
let mapleader=" "

set autoindent
set expandtab
set history=300
set hlsearch
set mouse=a
set relativenumber
"set number
set numberwidth=4
set ruler
set nobackup
set nowritebackup
set noswapfile
set shiftwidth=2
set softtabstop=2
set shiftround
set tabstop=2
set wildmenu
set showcmd
set incsearch
set laststatus=2  " Always display the status line
set splitright
set splitbelow

" Make it obvious where 80 characters is
"set textwidth=80
"set colorcolumn=+1

" Press return to temporarily turn off highlighted search
:nnoremap <CR> :nohlsearch<CR><CR>

" -- Plugins --
" Activates the CtrlP plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Set color scheme
syntax on
colorscheme twilight256

" Set NumberToggle Trigger to something other than C-n since NERDTree uses
" recommends this trigger
let g:NumberToggleTrigger="<Leader>tn"

" Vim Multiple Cursor key bindings
let g:multi_cursor_next_key='<C-w>'

" Load bundles through pathogen
execute pathogen#infect()

" Start Nerdtree when vim starts if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Open nerdtree with C-n
map <C-n> :NERDTreeToggle<CR>
" Close vim if only remaining window is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

