"Automate Plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Plugins
call plug#begin('~/.local/share/vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
call plug#end()

"General Settings
set nocompatible "be IMproved, required
filetype plugin on
syntax on
set lazyredraw
set updatetime=500
set number
set relativenumber
set list
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,nbsp:␣
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set conceallevel=2
set mouse=a
let mapleader = ';'

"Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-n> :tabnext<CR>
nnoremap <C-p> :tabprevious<CR>

"NerdTree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

autocmd VimResized * wincmd =

"Aesthetics
let base16colorspace=256
let g:airline_theme='base16'
let g:airline_symbols = {}
let g:airline_symbols.linenr = 'Ξ'
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#whitespace#symbol= '!'

"Ale
let g:ale_java_checkstyle_options = 'google_java_format'

"Deoplete
set completeopt+=noinsert
set completeopt+=noselect
set completeopt-=preview

"Goyo/Limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
nmap <leader>g :Goyo<CR>

"Keybindings
nmap <C-\> :NERDTreeToggle<CR>

nnoremap <C-Space> :FZF<CR>
imap <expr> <tab>   pumvisible() ? "\<c-n>" : "\<tab>"
imap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<tab>"

nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>d :bd<CR>
nnoremap <leader>s :w<CR>
