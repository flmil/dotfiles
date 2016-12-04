"-------------------------dein Scripts-----------------------------
if &compatible
	set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/Rei/.vim/bundle/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/Rei/.vim/bundle')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

"==================plug-in=================================
"nerdtree
call dein#add('scrooloose/nerdtree')

"emmet
call dein#add('mattn/emmet-vim')

"ligthline
call dein#add('itchyny/lightline.vim') 

"colorscheme
call dein#add('w0ng/vim-hybrid')
"==========================================================


" 未インストールのプラグインをインストール
if dein#check_install()
	call dein#install()
endif


" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif

"-------------------------End dein Scripts-------------------------

"#####表示設定#####
set number 
set title 
set showmatch 
syntax on 
set tabstop=2
set smartindent 
set ambiwidth=double
set shiftwidth=2
set smartindent
"colorscheme hybrid "カラー設定
set background=dark
colorscheme hybrid
autocmd VimEnter * execute 'NERDTree'



"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻


"####その他設定####
set noswapfile


"####plug-inの設定####

" lightline
set laststatus=2
set noshowmode

let g:lightline = {
			\ 'colorscheme': 'wombat',
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ],
			\             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
			\ },
			\ 'component': {
			\   'readonly': '%{&filetype=="help"?"":&readonly?"":""}',
			\   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
			\   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
			\ },
			\ 'component_visible_condition': {
			\   'readonly': '(&filetype!="help"&& &readonly)',
			\   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
			\   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
			\ },
			\ 'separator': { 'left': '', 'right': '' },
			\ 'subseparator': { 'left': '', 'right': '' }
			\ }


