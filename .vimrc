filetype plugin indent on

set nowrap        "�����s��܂�Ԃ��Ȃ�
set ruler
set wildmenu
set showcmd

" #####�^�u���͐ݒ�#####
set shiftwidth=4   "vim�������Ő�������i�ǂݍ��ݎ��Ȃǁjtab�����X�y�[�X4���ɂ���
"set softtabstop=4 �L�[�{�[�h��TAB����͂����ہATAB��4�����̃X�y�[�X����͂���
"set expandtab     TAB���X�y�[�X�ɕϊ�
set smarttab       "�s����TAB����͂������Ashiftwidth�̒l�����C���f���g����
set smartindent    "���s���Ɏ����ŃC���f���g������

set clipboard=unnamed "�N���b�v�{�[�h���g����悤�ɂ���

set history=50

" #####�\���ݒ�#####
set number       "�s�ԍ���\������
set title        "�ҏW���̃t�@�C������\��
set showmatch    "���ʓ��͎��̑Ή����銇�ʂ�\��
syntax on        "�R�[�h�̐F����
set tabstop=4    "�C���f���g���X�y�[�X4���ɐݒ�
set smartindent  "�I�[�g�C���f���g
"set list         �󔒕�������������
			     "�󔒕�����$�ŕ\������ğT�����������̂ō폜
set cursorline   "�ҏW�s�̍s�ԍ�����Ƀn�C���C�g����
set pumheight=10 "�|�b�v�A�b�v���j���[�̍ő卂���𐧌䂵�܂��B

" #####�����ݒ�#####
set ignorecase  "�啶��/�������̋�ʂȂ���������
set smartcase   "����������ɑ啶�����܂܂�Ă���ꍇ�͋�ʂ��Č�������
set wrapscan    "�������ɍŌ�܂ōs������ŏ��ɖ߂�
set hlsearch    "�������ʂ��n�C���C�g�\������

" ####�L�[�}�b�v#####
imap <C-j> <esc>" �C���T�[�g���[�h�̎��� C-j �Ńm�[�}�����[�h�ɖ߂�
imap [ []<left> " [ ���đł����� [] ���ē��͂���Ă��������ʂ̒��ɂ���(�ȉ����l)
imap ( ()<left> " ( ���đł����� () ���ē��͂���Ă��������ʂ̒��ɂ���(�ȉ����l)
imap { {}<left> " { ���đł����� {} ���ē��͂���Ă��������ʂ̒��ɂ���(�ȉ����l)

set noundofile
set nobackup

"NeoBundle set up start
set nocompatible
filetype off            " for NeoBundle
 
if has('vim_starting')
    set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
    call neobundle#begin(expand('~/.vim/bundle'))
"   call neobundle#begin(expand('$HOME/.vim/bundle/neobundle.vim'))
        NeoBundleFetch 'Shougo/neobundle.vim'
        " �������� NeoBundle �Ńv���O�C����ݒ肵�܂�
        " NeoBundle �ŊǗ�����v���O�C����ǉ����܂��B
        NeoBundle 'Shougo/neocomplcache.git'
        NeoBundle 'Shougo/unite.vim.git'
    call neobundle#end()

filetype plugin indent on       " restore filetype
"NeoBundle set up end
