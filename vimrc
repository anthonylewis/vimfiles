
call pathogen#infect()
call pathogen#helptags()

set nocompatible

set hidden

" Where am I?
set ruler
set number

" Tabs suck
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" Don't beep
set visualbell

" Make code pretty
syntax on

filetype on
filetype plugin on
filetype indent on

" Search options
set ignorecase
set smartcase
set hlsearch
set incsearch

set wildmenu

set background=dark
colorscheme desert

set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

" Plugin options
let g:CSApprox_verbose_level=0
let g:ctrlp_working_path_mode=0

" GUI options
if has("gui_running")
  set gcr=a:blinkwait0,a:block-cursor
  set gfn=Monaco:h12.00
  set guioptions-=T
  set fuopt=maxhorz,maxvert
  set lines=50 columns=180
endif

" Mappings
map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>

" switch buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>

"delete buffers
nmap <leader>d :bd<CR>
nmap <leader>D :bufdo bd<CR>

" ruby runner
let g:RubyRunner_open_below = 1
let g:RubyRunner_window_size = 10
nmap <leader>r :RunRuby<CR> <C-w>p

