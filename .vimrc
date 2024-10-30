syntax on
set relativenumber
set number
set cursorline
set textwidth=80
set nocompatible	
set splitbelow
set splitright
set termguicolors

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on
" Enable plugins and load plugin for the detected file type.
filetype plugin on
" Load an indent file for the detected file type.
filetype indent on
" Set shift width to 4 spaces.
set shiftwidth=4
" Set tab width to 4 columns.
set tabstop=4
" Use space characters instead of tabs.
"set expandtab
" Do not save backup files.
set nobackup
" Do not let cursor scroll below or above N number of lines when scrolling.
"set scrolloff=10
"set nowrap
" Show partial command you type in the last line of the screen.
"set showcmd
" Show the mode you are on the last line.
set showmode
" Show matching words during a search.
set showmatch
" Use highlighting when doing a search.
set hlsearch
" While searching though a file incrementally highlight matching characters as you type.
set incsearch
" Ignore capital letters during search.
"set ignorecase
" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase
set wildmenu
set wildmode=longest:full,full


call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'lervag/vimtex'
"Plug 'vim-airline/vim-airline'

call plug#end()

"gruvbox config"

let g:gruvbox_contrast_dark = 'medium' " Options: 'soft', 'medium', 'hard'
set background=dark    " Setting dark mode
autocmd vimenter * ++nested colorscheme gruvbox

"leader
let mapleader = "\<Space>"
nnoremap <leader>h :terminal<CR><C-w>-<C-w>-<C-w>-
nnoremap <leader>o :vs<CR>


nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

inoremap <C-a> <C-o>A
inoremap <C-e> <Left>
inoremap <C-r> <Right>
"nnoremap ; :
"xnoremap ; :
xnoremap Y "+y
nnoremap Y "+y

"TeX
filetype plugin indent on
syntax enable
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_view_zathura_options = '-reuse-instance'
let g:tex_flavor = 'latex'
let maplocalleader = ","

autocmd BufNewFile *.tex 0r ~/.vim/templates/tex_template.tex

if (empty($TMUX) && getenv('TERM_PROGRAM') != 'Apple_Terminal')
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"StatusLine
set laststatus=2        " Always display the status line
set statusline=%f        " Show file path
set statusline+=%h%m%r   " Display flags for file (help, modified, read-only)
set statusline+=%=       " Align the remaining items to the right
set statusline+=%l/%L    " Show current line number and total number of lines
set statusline+=\ \-\ %c " Display column number

"fzy
function! FzyCommand(choice_command, vim_command)
  try
    let output = system(a:choice_command . " | fzy ")
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . ' ' . output
  endif
endfunction

nnoremap <leader>e :call FzyCommand("find . -type f", ":e")<cr>
nnoremap <leader>v :call FzyCommand("find . -type f", ":vs")<cr>
nnoremap <leader>s :call FzyCommand("find . -type f", ":sp")<cr>
nnoremap <leader>e :call FzyCommand("ag . --silent -l -g ''", ":e")<cr>
nnoremap <leader>v :call FzyCommand("ag . --silent -l -g ''", ":vs")<cr>
nnoremap <leader>s :call FzyCommand("ag . --silent -l -g ''", ":sp")<cr>



