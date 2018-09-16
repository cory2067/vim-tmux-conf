" Tab/indent settings
set tabstop=4 shiftwidth=4 expandtab smarttab smartindent

set ttymouse=xterm2
set mouse=a

let mapleader = ","
let g:mapleader = ","

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" show current position
set ruler
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" Screen lines to keep above/below the cursor
set scrolloff=2

" Toggle with ,n: Show relative line numbers except for current line
function! NumberToggle()
  if(&relativenumber == 1)
    set nonumber
    set norelativenumber
  else
    set number
    set relativenumber
  endif
endfunc

map <leader>n :call NumberToggle()<cr>

" Toggle with ,t: Switch between 4 space and 2 space tab (4 by default)
function! TabToggle()
  if(&tabstop == 2)
    set tabstop=4 shiftwidth=4
  else
    set tabstop=2 shiftwidth=2
  endif
endfunc

map <leader>t :call TabToggle()<cr>

" Toggle with ,p: Paste mode
function! PasteToggle()
  if(&paste == 1)
    set nopaste
  else
    set paste
  endif
endfunc

map <leader>p :call PasteToggle()<cr>

" Call with ,w: Strip all excess whitespace
map <leader>w :%s/\s\+$//e<cr>

" Pressing ,s will toggle and untoggle spell checking
map <leader>s :setlocal spell!<cr>
" Pressing ,/ will clear search highlighting
map <leader>/ :noh<cr>

" Enable syntax highlighting
syntax enable
" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

colorscheme desert

" Override search color
hi Search ctermbg=Yellow
hi Search ctermfg=Red
