set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rhysd/vim-clang-format'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" All of Plugins must be added before the following line
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

set exrc
set secure

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

:imap jk <Esc>

:colorscheme torte

let g:netrw_banner = 0

" Set this shortcuts to easily navigate through panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Save file on Ctrl-s
:nmap <C-s> :w<CR>
:imap <C-s> <Esc>:w<CR>

" Copy and paste on Ctrl-c and Ctrl-v
:vnoremap <C-c> "+y 
:inoremap <C-v> <C-o>"+p

" Map Ctrl-E for file explorer
:map <C-e> :Explore<CR>

" File explorer customization
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" Show me line numbers for better navigataion and debugging
set number
" Set its width
set numberwidth=2
" Set colors for the bar
set t_Co=256
highlight LineNr term=bold cterm=NONE ctermfg=lightyellow ctermbg=darkgrey gui=NONE guifg=DarkGrey guibg=NONE

" Add vertical rule
set colorcolumn=120
highlight ColorColumn ctermbg=4

let g:UltiSnipsExpandTrigger="<c-n>"
let g:UltiSnipsJumpForwardTrigger="<c-m>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

