"""call plug#begin('~/.vim/plugins')

call plug#begin('~/.config/nvim/plugged') "NeoVim
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'peterhoeg/vim-qml'
  Plug 'scrooloose/nerdtree'
  "Plug 'scrooloose/syntastic'
  Plug 'jquintus/vim-log-syntax'
  Plug 'easymotion/vim-easymotion'
  "Plug 'altercation/vim-colors-solarized'
  "Una collezione di colorscheme
  Plug 'flazz/vim-colorschemes'
  Plug 'octol/vim-cpp-enhanced-highlight'
  "Onedark
  Plug 'joshdick/onedark.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'majutsushi/tagbar'
  "Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  "Plug 'Shougo/neoinclude.nvim'
  Plug 'zchee/deoplete-clang'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  "Genera il file .ycm_extra_conf.py(youcompleteme config) entrando nella cartella e lanciando ::YcmGenerateConfig or :CCGenerateConfig
  ""Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
call plug#end()

" General Vim settings
" set shell=bash\ --login
set nocompatible
set cursorline
set cmdheight=2
set completeopt+=longest,menuone
set hlsearch
set ignorecase
set laststatus=2
set nowrap
set number
set ruler
set showcmd
set smartcase
set wildmenu
set nobackup
set noswapfile
set hidden
set clipboard=unnamedplus
"Gvim se taglia icone e vim
set ambiwidth=double
syntax on

" Plugin Initializations
let mapleader = " "

let g:airline_powerline_fonts = 1 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:cscope_silent = 1
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf = '~/.vim/plugins/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_autoclose_preview_window_after_insertion = 1
let g:airline_theme='onedark'
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/include/clang'

"Compile
nmap <F5> :!g++ -o test test.cpp<CR>
"Run
nmap <F6> :!./test
"nmap <F6> :GundoToggle<CR>
nmap <C-E> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
" New Tab ctrl+n
nmap <C-N> :tabnew<CR>
nmap <C-T> :tabnext<CR>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <SPACE> <Nop>

nnoremap <leader>a ggVG<CR>
nnoremap <leader>h :set nohlsearch<CR>
nnoremap <leader>m :MatchmakerToggle<CR>
nnoremap <leader>sf :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>st :call ToggleLocationList()<CR>

nnoremap <leader><leader>c :e $MYVIMRC<CR>
nnoremap <leader><leader>h :Hexmode<CR>

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>+ :enew<CR>
nmap <leader>- :bp<BAR>:bd! #<CR>

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


set background=dark
colorscheme onedark

" GUI Window Size
if has("gui_running")
  winpos 510 155 " Center window on screen
  "set columns=110 lines=40
  "Full Screen
  set lines=999 columns=999

  " Remove menubar, tearoffs and toolbar
  set guioptions=
  "set guifont=Hack\ 10 "Dax
  set guifont=Hack\ 14 
  "set guifont=DejaVu\ Sans\ Mono:h11
endif 


