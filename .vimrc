filetype plugin indent on

syntax on

set nowrap

set hlsearch
set ignorecase
set smartcase

set autoindent
set ruler
set number
set wildmenu
set showcmd

set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
set smarttab

set clipboard=unnamed

set cursorline
set pumheight=10
set smartindent
set history=50

" インサートモードの時に C-j でノーマルモードに戻る
imap <C-j> <esc>
" [ って打ったら [] って入力されてしかも括弧の中にいる(以下同様)
imap [ []<left>
imap ( ()<left>
imap { {}<left>

nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>
set noundofile
set nobackup

"NeoBundle set up start
set nocompatible
filetype off            " for NeoBundle
 
if has('vim_starting')
    set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
    call neobundle#begin(expand('~/.vim/bundle'))
        NeoBundleFetch 'Shougo/neobundle.vim'
        " ここから NeoBundle でプラグインを設定します
        " NeoBundle で管理するプラグインを追加します。
        NeoBundle 'Shougo/neocomplcache.git'
        NeoBundle 'Shougo/unite.vim.git'
    call neobundle#end()

filetype plugin indent on       " restore filetype
"NeoBundle set up end
