set nowrap                  "�����s��܂�Ԃ��Ȃ�
set clipboard=unnamed       "�N���b�v�{�[�h���g����悤�ɂ���
set history=50              "�R�}���h������50�܂ŕێ�����
set ruler                   "��ʉ����̃o�[�Ɍ��݂̃J�[�\���̈ʒu��\������
set wildmenu                "�t�@�C�����⊮�@�\�I��
set wildmode=longest,full   "�t�@�C�����⊮�@�\�p�����[�^�ݒ�
set showcmd                 "�R�}���h��\��

" ##########�^�u���͐ݒ�##########
set shiftwidth=4   "vim�������Ő�������i�ǂݍ��ݎ��Ȃǁjtab�����X�y�[�X4���ɂ���
"set softtabstop=4 �L�[�{�[�h��TAB����͂����ہATAB��4�����̃X�y�[�X����͂���
"set expandtab     TAB���X�y�[�X�ɕϊ�
set smarttab       "�s����TAB����͂������Ashiftwidth�̒l�����C���f���g����
set smartindent    "���s���Ɏ����ŃC���f���g������

" ##########�\���ݒ�##########
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
set columns=100  "�E�B���h�E�̕�
set lines=30     "�E�B���h�E�̍���

" ##########�����ݒ�##########
set ignorecase  "�啶��/�������̋�ʂȂ���������
set smartcase   "����������ɑ啶�����܂܂�Ă���ꍇ�͋�ʂ��Č�������
set wrapscan    "�������ɍŌ�܂ōs������ŏ��ɖ߂�
set hlsearch    "�������ʂ��n�C���C�g�\������

" ##########�L�[�}�b�v##########
" �C���T�[�g���[�h�̎��� C-j �Ńm�[�}�����[�h�ɖ߂�
imap <C-j> <esc>
" ���ʓ��͕⊮
imap [ []<left>
imap ( ()<left>
imap { {}<left>

" ##########�o�b�N�A�b�v�t�@�C��##########
set noundofile  "un~�t�@�C�����쐬���Ȃ�
set nobackup    "�o�b�N�A�b�v�t�@�C�����쐬���Ȃ�

" ##########NeoBundle set up start##########
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   "set runtimepath+=C:/Users/pcadmin/.vim/bundle/neobundle.vim/
   set runtimepath+=$HOME/.vim/bundle/neobundle.vim/
 endif

 call neobundle#begin(expand('$HOME/.vim/bundle/'))
" �����v���O�C�����X�g
 NeoBundle 'Shougo/unite.vim'
" �����v���O�C�����X�g
 call neobundle#end()
 filetype plugin indent on
 NeoBundleCheck
" ##########NeoBundle set up end  ##########
