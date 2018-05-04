syntax on
set nocompatible 
set nocp
set ruler
set number
set t_Co=256
set background=light
set nowrap
set noswapfile
set nobackup
set laststatus=2
set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P
set hlsearch
set incsearch
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

call plug#begin()
    Plug 'jvanja/vim-bootstrap4-snippets'
	Plug 'tpope/vim-sensible'
	Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
	Plug 'Valloric/YouCompleteMe'
	Plug 'mattn/emmet-vim'
	Plug 'tpope/vim-fugitive'
	Plug 'gorodinskiy/vim-coloresque'
	Plug 'othree/javascript-libraries-syntax.vim'
	Plug 'jiangmiao/auto-pairs'
	Plug 'leafgarland/typescript-vim'
	Plug 'scrooloose/syntastic'
call plug#end()

autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 0

"key map
map <C-n> :NERDTreeToggle<CR>
