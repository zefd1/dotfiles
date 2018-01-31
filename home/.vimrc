set backspace=indent,eol,start

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'christophermca/meta5'
  Plugin 'tpope/vim-fugitive'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'scrooloose/nerdtree'
  Plugin 'vim-syntastic/syntastic'
  Plugin 'tpope/vim-surround'
  Plugin 'keith/rspec.vim'
  Plugin 'ekalinin/Dockerfile.vim'
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'pangloss/vim-javascript'
  Plugin 'mxw/vim-jsx'
  Plugin 'jiangmiao/auto-pairs'
call vundle#end()

"Styling stuff
syntax on
colorscheme meta5
set number
set cursorline
hi CursorLineNR ctermbg=234 ctermfg=255 guibg=#262626 guifg=white cterm=bold

"Syntax
set autoindent
set smartindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
set showcmd
set smartcase                                                " case-sensitive search if any caps
set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
set tabstop=8                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set splitright                                               " split nerdtree to the right
set wildmode=longest,list,full

au BufReadPost Jenkinsfile set syntax=groovy
au BufReadPost Jenkinsfile set filetype=groovy
au BufReadPost *.kubeconfig  set syntax=yaml
au BufReadPost *.kubeconfig  set filetype=yaml
" Enable basic mouse behavior such as resizing buffers.
set mouse=a
if exists('$TMUX')  " Support resizing in tmux
  set ttymouse=xterm2
endif

"Vim Airline
set laststatus=2
let g:airline_theme='murmur'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"NERDTree
let g:NERDTreeWinPos = "left"

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers=['eslint']

let g:jsx_ext_required = 0 " don't require jsx extension for syntax highlighting
