set shell=sh

set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces

set nocompatible
filetype plugin on
set omnifunc=syntaxcomplete#Complete

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

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'freeo/vim-kalisi'

Plug 'lambdalisue/suda.vim'
Plug 'shumphrey/fugitive-gitlab.vim'

Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'junegunn/fzf'

Plug 'dkarter/bullets.vim'
Plug 'chrisbra/Colorizer'
Plug 'Yggdroot/indentLine'

" TODO add fonts first
" Plug 'ryanoasis/vim-devicons'
call plug#end()

let g:ale_linters = {
\ 'cs': ['OmniSharp'],
\ 'cpp': ['clang']
\}

" Use the stdio version of OmniSharp-roslyn:
" let g:OmniSharp_start_server = 0
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_path = '/mnt/c/OmniSharp/OmniSharp.exe'
let g:OmniSharp_translate_cygwin_wsl = 1

autocmd BufNewFile,BufRead *.cs map gd :OmniSharpGotoDefinition<CR>

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

let g:airline_powerline_fonts = 1 " Needs to be activated for Powerline fonts

" add ApiKeys. Not under sourcecontrol
source private.vim

set relativenumber
set number
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).
map <C-n> :NERDTreeToggle<CR>

set autoread " Updates buffer when changing file
set confirm " Ask for confirmation before overriding changed buffer

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

map <F5> :!%
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count) " Allow dot command for surround.vim
