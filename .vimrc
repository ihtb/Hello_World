filetype plugin indent on

set nowrap                  "長い行を折り返さない
set clipboard=unnamed       "クリップボードを使えるようにする
set history=50              "コマンド履歴を50個まで保持する
set ruler                   "画面下部のバーに現在のカーソルの位置を表示する
set wildmenu                "ファイル名補完機能オン
set wildmode=longest,full   "ファイル名補完機能パラメータ設定
set showcmd                 "コマンドを表示

" ##########タブ入力設定##########
set shiftwidth=4   "vimが自動で生成する（読み込み時など）tab幅をスペース4つ文にする
"set softtabstop=4 キーボードでTABを入力した際、TABを4文字のスペースを入力する
"set expandtab     TABをスペースに変換
set smarttab       "行頭でTABを入力した時、shiftwidthの値だけインデントする
set smartindent    "改行時に自動でインデントを入れる

" ##########表示設定##########
set number       "行番号を表示する
set title        "編集中のファイル名を表示
set showmatch    "括弧入力時の対応する括弧を表示
syntax on        "コードの色分け
set tabstop=4    "インデントをスペース4つ分に設定
set smartindent  "オートインデント
"set list         空白文字を可視化する
			     "空白文字が$で表現されて鬱陶しかったので削除
set cursorline   "編集行の行番号を常にハイライトする
set pumheight=10 "ポップアップメニューの最大高さを制御します。
set columns=150  "ウィンドウの幅
set lines=30     "ウィンドウの高さ

" ##########検索設定##########
set ignorecase  "大文字/小文字の区別なく検索する
set smartcase   "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan    "検索時に最後まで行ったら最初に戻る
set hlsearch    "検索結果をハイライト表示する

" ##########キーマップ##########
imap <C-j> <esc>" インサートモードの時に C-j でノーマルモードに戻る
imap [ []<left> " [ って打ったら [] って入力されてしかも括弧の中にいる(以下同様)
imap ( ()<left> " ( って打ったら () って入力されてしかも括弧の中にいる(以下同様)
imap { {}<left> " { って打ったら {} って入力されてしかも括弧の中にいる(以下同様)

" ##########バックアップファイル##########
set noundofile  "un~ファイルを作成しない
set nobackup    "バックアップファイルを作成しない

" ##########NeoBundle set up start##########
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   "set runtimepath+=~/.vim/bundle/neobundle.vim/
   set runtimepath+=C:/Users/pcadmin/.vim/bundle/neobundle.vim "相対パスではなく絶対パスで指定
 endif

 " Required:
 "call neobundle#begin(expand('~/.vim/bundle/'))
 call neobundle#begin(expand('C:/Users/pcadmin/.vim/bundle/neobundle.vim'))"相対パスではなく絶対パスで指定

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
" ##########NeoBundle set up end  ##########
