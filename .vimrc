set nowrap                      "�����s��܂�Ԃ��Ȃ�
set clipboard=unnamed           "�N���b�v�{�[�h���g����悤�ɂ���
set history=50                  "�R�}���h������50�܂ŕێ�����
set ruler                       "��ʉ����̃o�[�Ɍ��݂̃J�[�\���̈ʒu��\������
set wildmenu                    "�t�@�C�����⊮�@�\�I��
set wildmode=longest,full       "�t�@�C�����⊮�@�\�p�����[�^�ݒ�
set showcmd                     "�R�}���h��\��
set whichwrap=b,s,h,l,<,>,~,[,] "�O�s���@�J�����g�s���̈ړ�����

" ##########����p�t�H���g##########
if has('printer')
  if has('win32')
    set printfont=MS_Mincho:h12:cSHIFTJIS
    "set printfont=MS_Gothic:h12:cSHIFTJIS
  endif
endif

" ##########�^�u���͐ݒ�##########
set shiftwidth=4   "vim�������Ő�������i�ǂݍ��ݎ��Ȃǁjtab�����X�y�[�X4���ɂ���
"set softtabstop=4 �L�[�{�[�h��TAB����͂����ہATAB��4�����̃X�y�[�X����͂���
"set expandtab     TAB���X�y�[�X�ɕϊ�
set smarttab       "�s����TAB����͂������Ashiftwidth�̒l�����C���f���g����
set smartindent    "���s���Ɏ����ŃC���f���g������

" ##########�\���ݒ�##########
set number          "�s�ԍ���\������
set title           "�ҏW���̃t�@�C������\��
set showmatch       "���ʓ��͎��̑Ή����銇�ʂ�\��
syntax on           "�R�[�h�̐F����
"�J���[�X�L�[���I�� 
"colorscheme molokai
colorscheme koehler
set tabstop=4       "�C���f���g���X�y�[�X4���ɐݒ�
set smartindent     "�I�[�g�C���f���g
"set list            �󔒕�������������
			        "�󔒕�����$�ŕ\������ğT�����������̂ō폜
set cursorline      "�ҏW�s�̍s�ԍ�����Ƀn�C���C�g����
set pumheight=10    "�|�b�v�A�b�v���j���[�̍ő卂���𐧌䂵�܂��B
set columns=100     "�E�B���h�E�̕�
set lines=30        "�E�B���h�E�̍���
let g:lightline = {
		\ 'colorscheme': 'jellybeans',
		\}

" ##########�G���R�[�h�ݒ�##########
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

" ##########�L�[�o�C���h�ݒ�##########
"���ʓ��͕⊮
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
"�S�I��
"nnoremap <C-a> gg<S-v><S-g>
"nmap <silent> <F5> ggVG
"nmap <silent> <F6> :%y<CR>

" ##########�����ݒ�##########
set ignorecase  "�啶��/�������̋�ʂȂ���������
set smartcase   "����������ɑ啶�����܂܂�Ă���ꍇ�͋�ʂ��Č�������
set wrapscan    "�������ɍŌ�܂ōs������ŏ��ɖ߂�
set hlsearch    "�������ʂ��n�C���C�g�\������

" ##########�o�b�N�A�b�v�t�@�C��##########
set noundofile  "un~�t�@�C�����쐬���Ȃ�
set nobackup    "�o�b�N�A�b�v�t�@�C�����쐬���Ȃ�

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
