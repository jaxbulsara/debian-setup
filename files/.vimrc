" Color scheme
syntax on
colorscheme molokai

" General
set number
set noswapfile
set incsearch
set colorcolumn=80
set autoindent

" Set tab preferences
set expandtab
set softtabstop=4

" Autoclose boundaries
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR><TAB><CR><BACKSPACE>}<Up><ESC>A
inoremap [<CR> [<CR><TAB><CR><BACKSPACE>]<Up><ESC>A
inoremap {;<CR> {<CR>};<ESC>O

" Type over closing boundaries
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"

" Make background transparent by removing theme background
hi Normal guibg=NONE ctermbg=NONE

" Open NERDTree
autocmd VimEnter * NERDTree | wincmd p

" Open NERDTree in every tab
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" Close NERDTree if it is the last window in the last tab
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="violet"

