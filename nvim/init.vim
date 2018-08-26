set shell=sh

set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces

set nocompatible
filetype plugin on
runtime macros/matchit.vim

set swapfile

if has('win32')
	set dir=~/tmp
else
	set dir=~/.vim/temp/
endif
call plug#begin('~/.local/share/nvim/plugged')


Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" Plug 'mhartington/oceanic-next'

Plug 'tpope/vim-fugitive'

Plug 'freeo/vim-kalisi'

call plug#end()



" initialte theme
" if (has("termguicolors"))
"  set termguicolors
" endif

" Theme
set background=dark " light
syntax enable
colorscheme kalisi
hi Normal guibg=NONE ctermbg=NONE
hi LineNr ctermfg=NONE ctermbg=NONE

" set showcmd             " Show (partial) command in status line.<Paste>

" let g:airline_theme='kalisi'
let g:airline_theme='kalisi'
let g:airline_powerline_fonts = 1 " Needs to be activated for Powerline fonts
" let g:airline#extensions#tabline#enabled = 1 " Always show tabbar

set relativenumber
set number
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).
map <C-n> :NERDTreeToggle<CR>

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

map <F5> :!%

nnoremap ö `
