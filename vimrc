set number
set rtp+=~/.vim/bundle/Vundle.vim

set laststatus=2
set t_Co=256

set autoindent
set smarttab

if has('gui_running')
	set guifont=Hack\ 11
endif

filetype plugin indent on

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'sickill/vim-monokai'
Plugin 'scrooloose/nerdtree'
Plugin 'jelera/vim-javascript-syntax'

call vundle#end()

" Airline and aesthetics
let g:airline_theme="bubblegum"
let g:airline_powerline_fonts=1
colorscheme monokai

" Nerd tree config
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Bindings
nmap <silent> <Leader><Up> :wincmd k<CR>
nmap <silent> <Leader><Down> :wincmd j<CR>
nmap <silent> <Leader><Left> :wincmd h<CR>
nmap <silent> <Leader><Right> :wincmd l<CR>
