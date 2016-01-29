" Leader
let mapleader = " "

set term=screen-256color
set ruler
set backspace=2  " Backspace deletes like most programs in insert mode
set laststatus=2
set number
set relativenumber
set cursorline
hi CursorLine cterm=NONE ctermbg=8 ctermfg=NONE
set cursorcolumn
set title
set hlsearch
syntax on
set list
set colorcolumn=80

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Display extra whitespace
set listchars=tab:▸\ ,eol:¬
" set listchars=tab:»·,trail:·,nbsp:·

set tabstop=2 shiftwidth=2 expandtab shiftround
set showcmd       " display incomplete commands"

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Use one space, not two, after punctuation.
set nojoinspaces

set winwidth=92
set winheight=12
set winminheight=12
set winheight=999

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

colorscheme railscasts

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

runtime macros/matchit.vim

filetype plugin indent on    " required

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
set completeopt=longest,menuone

set nocompatible              " be iMproved, required

" filetype off                  " required
" set t_Co=256

set encoding=utf-8
scriptencoding utf-8

" Include plugins
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" vim-rspec mappings
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
nnoremap <Leader>a :call RunAllSpecs()<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" moving aroung in command mode
cnoremap <c-h> <left>
cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-l> <right>

:nmap <Leader>c gcc
:nmap <Leader>te :tabedit<Space>
:nmap <Leader>tc :tabclose<CR>
:nmap <Leader>n gt
:nmap <Leader>p gT
:nmap <Leader>vi :tabedit ~/.vimrc<CR>
:nmap <Leader>vp :tabedit ~/.vimrc.bundles<CR>
:nmap <Leader>vs :source ~/.vimrc<CR>
map ss <ESC>:w<CR>

 " Turn off arrow keys in Normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

:inoremap jk <esc>

" nnoremap <leader>hm <Esc>:call ToggleHardMode()<CR>

let g:rspec_command = 'call Send_to_Tmux("time spring rspec {spec}\n")'
let g:rspec_runner = "os_x_iterm2"

" vim-rspec tslime
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" let g:lightline = {
"       \  'colorscheme': 'wombat',
"       \  'active': {
"       \  'left': [ [ 'mode', 'paste'  ],
"       \            [ 'fugitive', 'readonly', 'filename', 'modified'  ] ]
"       \ },
"       \ 'component': {
"       \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
"       \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
"       \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
"       \ },
"       \ 'component_visible_condition': {
"       \   'readonly': '(&filetype!="help"&& &readonly)',
"       \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
"       \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
"       \
"       \ }
"       \ }

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" ervandew/supertaervandew/supertabb" Put your non-Plugin stuff after this line
" To ignore plugin indent changes, instead use:
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" ervandew/supertaervandew/supertabb" Put your non-Plugin stuff after this line
