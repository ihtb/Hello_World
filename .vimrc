set nowrap                      "長い行を折り返さない
set clipboard=unnamed           "クリップボードを使えるようにする
set history=50                  "コマンド履歴を50個まで保持する
set ruler                       "画面下部のバーに現在のカーソルの位置を表示する
set wildmenu                    "ファイル名補完機能オン
set wildmode=longest,full       "ファイル名補完機能パラメータ設定
set showcmd                     "コマンドを表示
set whichwrap=b,s,h,l,<,>,~,[,] "前行末　カレント行頭の移動許可

" ##########印刷用フォント##########
if has('printer')
  if has('win32')
    set printfont=MS_Mincho:h12:cSHIFTJIS
    "set printfont=MS_Gothic:h12:cSHIFTJIS
  endif
endif

" ##########タブ入力設定##########
set shiftwidth=4   "vimが自動で生成する（読み込み時など）tab幅をスペース4つ文にする
"set softtabstop=4 キーボードでTABを入力した際、TABを4文字のスペースを入力する
"set expandtab     TABをスペースに変換
set smarttab       "行頭でTABを入力した時、shiftwidthの値だけインデントする
set smartindent    "改行時に自動でインデントを入れる

" ##########表示設定##########
set number          "行番号を表示する
set title           "編集中のファイル名を表示
set showmatch       "括弧入力時の対応する括弧を表示
syntax on           "コードの色分け
"カラースキーム選択 
"colorscheme molokai
colorscheme koehler
set tabstop=4       "インデントをスペース4つ分に設定
set smartindent     "オートインデント
"set list            空白文字を可視化する
			        "空白文字が$で表現されて鬱陶しかったので削除
set cursorline      "編集行の行番号を常にハイライトする
set pumheight=10    "ポップアップメニューの最大高さを制御します。
set columns=100     "ウィンドウの幅
set lines=30        "ウィンドウの高さ
let g:lightline = {
		\ 'colorscheme': 'jellybeans',
		\}

" ##########エンコード設定##########
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

" ##########キーバインド設定##########
"括弧入力補完
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
"全選択
"nnoremap <C-a> gg<S-v><S-g>
"nmap <silent> <F5> ggVG
"nmap <silent> <F6> :%y<CR>

" ##########検索設定##########
set ignorecase  "大文字/小文字の区別なく検索する
set smartcase   "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan    "検索時に最後まで行ったら最初に戻る
set hlsearch    "検索結果をハイライト表示する

" ##########バックアップファイル##########
set noundofile  "un~ファイルを作成しない
set nobackup    "バックアップファイルを作成しない

" ##########NeoBundle set up start##########
if 0 | endif

filetype off

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  set runtimepath+=$HOME/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('$HOME/.vim/bundle/'))

" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
"NeoBundle 'Shougo/vimproc', {
"  \ 'build' : {
"  \     'windows' : 'make -f make_mingw32.mak',
"  \     'cygwin' : 'make -f make_cygwin.mak',
"  \     'mac' : 'make -f make_mac.mak',
"  \     'unix' : 'make -f make_unix.mak',
"  \    },
"  \ }
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'Shougo/neosnippet'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 't9md/vim-textmanip'
NeoBundle 'ujihisa/unite-colorscheme'
"NeoBundle 'tomasr/molokai'
"NeoBundle 'Townk/vim-autoclose'
"NeoBundle 'https://bitbucket.org/kovisoft/slimv'

call neobundle#end()

filetype plugin indent on     " required!
filetype indent on

NeoBundleCheck
" ##########NeoBundle set up end  ##########
