call pathogen#incubate()
call pathogen#helptags()


" Oxygen, must haves in every vimrc
set nocompatible            " Makes incompatible with Vi 
filetype plugin indent on   " Loads plugins and smart indentation based on the filetype
syntax on                   " Enable syntax highlighting
set showcmd                 " Show partial commands in the last line of the screen
set nomodeline              " Disable model lines due to their security vulnerablities


" Vim Options
set number                  " Show line number on the left
set nowrap                  " Disable word wrap
set tabstop=4 shiftwidth=4  " A tab is 4 spaces
set expandtab               " Converts tabs into spaces
"set laststatus=2           " Always show the statusline, check out powerline
set cul                     " Highlights the current line
set showmatch               " Show matching brackets 
set ruler                   " Show the line and column number in the status bar
"set scrolloff=10            " Keep at least n lines above / below
set backspace=indent,eol,start  "Backspace through everything in insert mode 


" Searching
set hlsearch                " Highlight the matches
set incsearch               " Incremental Searching
set ignorecase              " Searches are NOT case sensitive
set smartcase               " ... Unless they contain at least one capital letter


" Mappings
nmap <F2> :NERDTreeToggle<CR>   " Mapping F2 to NERDTreeToggle
inoremap jj <ESC>           " Maps jj to ESC in insert mode, no need to stretch the left pinky

" Color Scheme
colorscheme Tomorrow-Night  " Use the specified color scheme which can be found in .vim/colors directory
