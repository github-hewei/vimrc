syntax on

" 设置选项
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
set incsearch
set ignorecase
set smartcase
set listchars=tab:→\ ,eol:\ ,trail:·,extends:»,precedes:«
set list
set expandtab
set shiftwidth=2
set tabstop=2

" normal模式键盘映射
noremap J 5jzz
noremap K 5kzz

" 初始化取消代码高亮
exec "nohlsearch"

" 键盘映射
map R :source $MYVIMRC<CR>

" 快捷分屏
map sh :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>

" 调整分屏大小
map <C-up> :res+5<CR>
map <C-down> :res-5<CR>
map <C-left> :vertical resize-5<CR>
map <C-right> :vertical resize+5<CR>

" 插件管理
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'preservim/nerdtree'

call plug#end()

" 设置默认主题
color snazzy

" 插件管理
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" YCM
Plugin 'git@github.com:ycm-core/YouCompleteMe.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
