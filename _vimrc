scriptencoding utf-8
set nocompatible

if has('vim_starting')
	filetype plugin off
	filetype indent off
	execute 'set runtimepath+=' . expand('~/.vim/bundle/neobundle.vim')
endif
call neobundle#rc(expand('~/.vim/bundle'))

NeoBundle 'git://github.com/kien/ctrlp.vim.git'
NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
"NeoBundle 'git://github.com/scrooloose/nerdtree.git'
NeoBundle 'git://github.com/scrooloose/syntastic.git'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'https://github.com/mattn/emmet-vim'

syntax on
filetype plugin on
filetype indent on

" SSH クライアントの設定によってはマウスが使える（putty
" だと最初からいける）
"set mouse=n

if has('mouse')
  set mouse=a
endif

set noswapfile
set nobackup
set hidden

"" 他で書き換えられたら自動で読み直す"
set autoread
set clipboard=unnamed,autoselect
set showmode

syntax on
filetype on
filetype plugin on
filetype indent on
set vb t_vb=
set number
set tabstop=2
set shiftwidth=2
set noexpandtab

""colorscheme molokai
colorscheme hybrid
set t_Co=256
noremap ; :
noremap : ;
set encoding=utf-8
set title

"カッコの保管設定
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi{<C-R>z}<ESC>
vnoremap [ "zdi[<C-R>z]<ESC>
vnoremap ( "zdi(<C-R>z)<ESC>
vnoremap " "zdi"<C-R>z"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>
inoremap jjj <Esc>

"少し多めに移動
nmap <C-j> 5j
nmap <C-h> 5h
nmap <C-k> 5k
nmap <C-l> 5l

" 0, 9で行頭、行末へ
nmap 1 0
nmap 0 ^
nmap 9 $

"Search
 set hlsearch  " highlight search
 set incsearch  " incremental search, search as you type
 set ignorecase " Ignore case when searching 
 set smartcase " Ignore case when searching lowercase
  
  " ESCキー2度押しでハイライトを消す
  nnoremap <Esc><Esc> :<C-u>set nohlsearch<Return>
  nnoremap / :<C-u>set hlsearch<Return>/
  nnoremap ? :<C-u>set hlsearch<Return>?
  nnoremap * :<C-u>set hlsearch<Return>*
  nnoremap # :<C-u>set hlsearch<Return>#""""""

"emmetの設定
""ctrl + e で展開
let g:user_emmet_expandabbr_key = '<c-e>'

"新しい行を作ったときに高度な自動インデントを行う
set smartindent

"新しい行のインデントを現在行と同じにする
set autoindent

"sass,scssのシンタックスハイライト表示
au BufRead,BufNewFile *.scss set filetype=sass
