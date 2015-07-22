
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
let g:moria_style='white'

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

" .md is a markdown file
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" .es6 is javascript from the future
autocmd BufRead,BufNewFile *.es6 setfiletype javascript

" Supertab setup - context with omnicomplete
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

" Ruby autocomplete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1

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
nmap <silent> <leader>n :NERDTreeToggle<CR>
nmap <silent> <leader>t :CommandT<CR>
nmap <silent> <leader>b :CommandTBuffer<CR>
nmap <silent> <leader>f :CommandTFlush<CR>

" Commentary
nmap <silent> <leader>c gcc
vmap <silent> <leader>c gc

" open spec file for current file
nmap <silent> <leader>a :A<CR>

" goto file under cursor
nmap <silent> <leader>e gf<CR>

" close the quickfix window
nmap <silent> <leader>q :ccl<CR>

" turn off highlight current search
nmap <silent> <leader>h :nohls<CR>

" toggle current line highlight
nmap <silent> <leader>x :set cursorline!<CR>

" delete buffers
" nmap <silent> <leader>d :bd<CR>
nmap <silent> <leader>d :Sayonara!<CR>
nmap <silent> <leader>D :bufdo bd<CR>

" ruby runner
let g:RubyRunner_open_below = 1
let g:RubyRunner_window_size = 10
nmap <silent> <leader>g :RunRuby<CR> <C-w>p

" RSpec.vim
let g:rspec_runner = "os_x_iterm"
nmap <silent> <leader>r :call RunCurrentSpecFile()<CR>
nmap <silent> <leader>s :call RunNearestSpec()<CR>
nmap <silent> <leader>l :call RunLastSpec()<CR>
" nmap <silent> <leader>a :call RunAllSpecs()<CR>

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
