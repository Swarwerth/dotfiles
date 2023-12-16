" ~/.vimrc

" Syntax on
filetype on
syntax on

" Converting tabs to spaces
set expandtab
set smarttab
set shiftround
set shiftwidth=4
set softtabstop=4
set tabstop=8

" Search
set incsearch
" set hlsearch
set ignorecase
set smartcase

" Interface
set number
set cc=80
set wildmenu
set scrolloff=10

" File
set autoread
set autowrite

" Miscellaneaous
set list
set list listchars=tab:»·,trail:·
set encoding=utf-8
set belloff=all
set backspace=eol,start,indent
set linebreak
set cursorline
set mouse=a

" Clipboard
set clipboard=autoselect

" Performence
set lazyredraw


" Vundle config

" Use VIM settings
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'rafi/awesome-vim-colorschemes' " Themes for vim
Plugin 'itchyny/lightline.vim' " Tabline

Plugin 'preservim/nerdtree' " Tree of files

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

Plugin 'Yggdroot/indentLine' " Indentation

call vundle#end()
filetype plugin indent on

" Themes
set termguicolors
set background=dark
colorscheme onehalfdark

" Tabline
" let g:airline_theme='onehalfdark'
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'one',
    \ }

" Indent line to |
let g:indentLine_char='|'

" Auto-save
let g:auto_save = 1

" Close brackets for C#
autocmd Filetype {cs,py,c,cpp,h} call SetCSharpAutocompletion()

function SetCSharpAutocompletion()
  inoremap {      {}<Left>
  inoremap {<CR>  <CR>{<CR>}<Esc>O
  inoremap {{     {
  inoremap {}     {}

  inoremap (  ()<Left>
  inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
  inoremap <expr> <BS>  strpart(getline('.'), col('.')-2, 2) == "()" ? "\<BS><Del>" : strpart(getline('.'), col('.')-2, 2) == "''" ? "\<BS><Del>" : strpart(getline('.'), col('.')-2, 2) == "\"\"" ? "\<BS><Del>" : "\<BS>"


  inoremap [  []<Left>
  inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"

  inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
  inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
"  inoremap <expr> <BS>  strpart(getline('.'), col('.')-2, 2) == "''" ? "\<BS><Del>" : "\<BS>"

"  inoremap <expr> ; strpart(getline('.'), col('.')-1, 1) == ")" ? "\<End>;" : ";"

  inoremap for<Space> for ()<Left>
  inoremap if<Space> if ()<Left>
  inoremap if<Tab> if ()<Left>
endfunction

" CTRL + t - Display Tree
noremap <C-t> :NERDTreeToggle<cr>

" F7 - Remove syntax
noremap <F7> :if exists("g:syntax_on") <Bar>
    \ syntax off <Bar>
    \ else <Bar>
    \ syntax enable <Bar>
    \ endif <CR>

" Make configuration
autocmd Filetype make setlocal noexpandtab

set list listchars=tab:»·,trail:·

" per .git vim configs
" just `git config vim.settings "expandtab sw=4 sts=4"` in a git repository
" change sybtax settings for this repository
let git_settings = system("git config --get vim.settings")
if strlen(git_settings)
        exe "set" git_settings
endif

