set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set laststatus=2

packadd! termdebug
let python_highlight_all=1
syntax on

"set rtp+=powerline/bindings/vim

"Plugin 'VundleVim/Vundle.vim'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'puremourning/vimspector'
Plugin 'jnurmine/Zenburn'
Plugin 'bling/vim-airline'
Plugin 'w0rp/ale'
" Lean & mean status/tabline for vim
Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
Plugin 'altercation/vim-colors-solarized'
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

Bundle 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

let NERDTreeIgnore=['\.pyc$', '\~$']
"au BufRead,BufNewFile * .py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"au Filetype python set
"	\ set tabstop=4
"	\ set softtabstop=4
"	\ set shiftwidth=4
"	\ set textwidth=79
"	\ set expandtab
"	\ set autoindent
"	\ set fileformat=unix

"Testi Airline
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1

"let g:ale_c_clangtidy_executable = 'clang-tidy -checks=* --extra-arg=-I --extra-arg=/usr/include'

"C Programming options

let g:ale_c_cc_option = '-Wno-aligned-new'
let g:termdebug_wide=1
"let g:ale_linters = {'c': ['clangtidy', 'clangcheck']}

let g:ale_linters = {'c': ['cc']}
"let g:ale_c_cc_options = '-- -std=gnu11 -Wall -L/usr/include `pkg-config --cflags gtk+-3.0`' 
"let g:ale_c_clangtidy_options = '-I /usr/include `pkg-config --cflags gtk+-3.0`'
"let g:ale_c_clangcheck_options = '-- -I /usr/include'

"let g:ale_c_clangcheck_options = '-- -I /usr/include `pkg-config --cflags gtk+-3.0`'

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Source\ Code\ Pro\ for\ Powerline:h15
        colorscheme PaperColor              " set color scheme
    endif
endif 

"Testi Powerline end

"Buffers
map gn :bnext<cr>
map gp :bprevious<cr>
map gd :bdelete<cr>


set foldmethod=indent
set foldlevel=99

nmap " :NERDTreeToggle<CR>

nnoremap <space> za

set clipboard=unnamed

"autocmd vimenter * NERDTree | wincmd p

set nu

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

"if has('qui_running')
"	set background=dark
"	colorscheme solarized
"else
"	colorscheme zenburn
"endif

autocmd BufEnter *.py colorscheme zenburn

call togglebg#map('<F5>')
