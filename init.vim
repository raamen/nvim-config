if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
filetype plugin indent on
syntax enable
if dein#check_install()
  call dein#install()
  call dein#update()
endif

map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>
map <BS> <Nop>
map <Enter> <Nop>
map <Tab> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <BS> <Nop>
inoremap <Enter> <Nop>
inoremap <Tab> <Nop>

set number
set ruler
set nolist
set nobackup
set autoindent
set list
set listchars=eol:↩,trail:-,tab:>\ ,extends:<
set expandtab
set ts=4 sw=4 sts=0
set shiftwidth=4
set showmatch
set smartindent
set smarttab
set tabstop=4
set whichwrap=b,s,h,l,<,>,[,]
set ic
set autowrite
set mouse=niv
"set clipboard=unnamed
set directory=/tmp
set laststatus=2
set hlsearch
set noswapfile
set noignorecase
set viminfo=
"set viminfo='20,\"200,:20,%,n~/.viminfo

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
autocmd BufWritePre * :%s/\s\+$//ge
autocmd FileType ruby autocmd BufWritePre * :%s/\t/  /ge
autocmd FileType coffee autocmd BufWritePre * :%s/\t/  /ge
autocmd BufRead,BufNewFile *.es6 setfiletype javascript
autocmd BufEnter *.slim :set syn=slim
autocmd BufEnter *.rb,*.slim,*.yml,*.ru,*.rake,*.coffee,*coffee.erb,*.scss,*.es6,*.js :set ts=2 sw=2 sts=0

" vim-tags
let g:vim_tags_project_tags_command = "/usr/bin/ctags -f tags -R --exclude=*/app/frontend/* --exclude=*/public/javascripts/* --exclude=*/assets/* --exclude=node_modules/* --exclude=*/config/* --exclude=*/node_modules/* --exclude=vendor/* --sort=yes --languages=ruby . 2>/dev/null"
let g:vim_tags_ignore_files = ['.gitignore', '.svnignore', '.cvsignore', '.js', '.es6', '.coffee', '.log']

" deoplete
let g:python_host_prog =  expand('/usr/bin/python')
let g:python3_host_prog = expand('/usr/bin/python3')
let g:deoplete#enable_at_startup = 1

" alvan/vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.erb,*.php,*.vue'
