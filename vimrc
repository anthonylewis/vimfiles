
call pathogen#infect()
call pathogen#helptags()

set nocompatible

set hidden

set history=1000

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
set wildignore+=.git,doc,ext,lib/pentaho/*,tmp

set background=dark
colorscheme jellybeans

let g:molokai_original=1

" Kill the pink on popup menus
highlight Pmenu ctermbg=238 gui=bold
highlight Pmenu gui=bold guibg=#CECECE guifg=#444444

set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Plugin options
let g:CommandTMaxHeight=20
let g:CommandTMatchWindowReverse=1

" Supertab setup - context with omnicomplete - too slow in our app.
" let g:SuperTabDefaultCompletionType = "context"
" let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
" let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
" let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
" let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

" Ruby autocomplete - too slow in our app.
" autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
" autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
" autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
" autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
" autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
" autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1

" Supertab setup - keyword completion
let g:SuperTabDefaultCompletionType = "<c-x><c-n>"

" find completions in the current buffer and ctags
set complete=.,t

" rails.vim options
let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let g:rails_ctags_arguments='--exclude=public --exclude=log --exclude=.git --exclude=tmp --exclude=vendor'

" GUI options
if has("gui_running")
  set gcr=a:blinkwait0,a:block-cursor
  set gfn=Monaco:h12.00
  set guioptions-=T
  set fuopt=maxhorz,maxvert
  set lines=50 columns=180
endif

" Mappings
" map <silent> <F2> :NERDTreeToggle<CR>
" map <silent> <F3> :TagbarToggle<CR>
" map <silent> <F4> :CommandT<CR>
" map <silent> <F5> :CommandTBuffer<CR>

nmap <silent> <leader>n :NERDTreeToggle<CR>
nmap <silent> <leader>c :TagbarToggle<CR>
nmap <silent> <leader>t :CommandT<CR>
nmap <silent> <leader>b :CommandTBuffer<CR>
nmap <silent> <leader>f :CommandTFlush<CR>

" close the quickfix window
nmap <silent> <leader>q :ccl<CR>

" turn off highlight current search
nmap <silent> <leader>h :nohls<CR>

" toggle current line highlight
nmap <silent> <leader>l :set cursorline!<CR>

" delete buffers
nmap <silent> <leader>d :bd<CR>
nmap <silent> <leader>D :bufdo bd<CR>

" ruby runner
let g:RubyRunner_open_below = 1
let g:RubyRunner_window_size = 10
nmap <silent> <leader>r :RunRuby<CR> <C-w>p

" colorcolumn is Vim 7.3 only
if exists("&colorcolumn")
  let g:ColorColumn = 80

  " use light gray for column width
  highlight ColorColumn term=reverse ctermbg=242 guibg=Grey40

  function! s:ToggleColorColumn()
    if &colorcolumn == 0
      let &colorcolumn = g:ColorColumn
    else
      let &colorcolumn = 0
    endif
  endfunction

  nmap <silent> <leader>w :call <SID>ToggleColorColumn()<cr>
endif

