set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set ignorecase
" autocmd FileType cpp map <F8> :w <CR> :!gcc % -o %< ;and ./%< <CR>
autocmd FileType cpp map <F8> :update<CR> :make %<<CR>
autocmd FileType cpp map <F9> :! ./%< <CR>
autocmd FileType py map <F9> :exec '!python' shellescape(@%, 1)<cr>
" goto definition with F12
" map <F12> <C-]>

filetype plugin indent on
syntax enable	
