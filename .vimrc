" ~/.vimrc

" Restricted length
set colorcolumn=80
set textwidth=80

" Syntax on
noremap <C-i> :syntax on<cr>

" Set encoding
set encoding=utf-8

" Disable beeping
set belloff=all

" Using clipboard as the default register
set clipboard=unnamedplus

" Fix backspace
set backspace=eol,start,indent

" For performence
set lazyredraw

" Display space after lines
set list listchars=tab:»·,trail:·

" Converting tabs to spaces
set expandtab
set smarttab
set shiftround
set shiftwidth=4
set softtabstop=4
set tabstop=8

" Indent
set smartindent
set autoindent
set cindent

" Number line
set number

" Enable relative numbers
" set relativenumber

" Scrolling
set mouse=a

" Wrapping text
set linebreak

" Highlight the line under scheme
set cursorline

" Text seleted to clipboard
set clipboard=autoselect

" Enable syntax highlighting
syntax enable
syntax on

" Highlight search
set hlsearch

" Enable spellchecking
set spell

" Vundle config

" Use VIM settings
set nocompatible

" Detect the type of file
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'ycm-core/YouCompleteMe' " Auto completion
Plugin 'zxqfl/tabnine-vim' " Tabnine

Plugin 'rafi/awesome-vim-colorschemes' " Themes for vim
Plugin 'itchyny/lightline.vim' " Tabline
" Plugin 'vim-airline/vim-airline' " Bottom bar
" Plugin 'vim-airline/vim-airline-themes' " Themes for bottom bar

Plugin 'preservim/nerdtree' " Tree of files

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

Plugin 'lervag/vimtex' " LaTeX
Plugin 'Yggdroot/indentLine' " Indentation
Plugin '907th/vim-auto-save' " Auto-save

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
