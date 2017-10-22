"ALL ENABLED FEATURES"
syntax enable " enables syntax processing
" filetype indent on
" this is so that different languages can have different indentations, however to do this one needs to have a .vim file [ex. python.vim] located in ~/.vim/indent/python.vim

"ALL SET COMMANDS"
"colorscheme redblack
"colorscheme wal
colorscheme molokai
let g:filetype_pl="prolog"
set foldnestmax=10 " guards against doing too much fold nesting
set tabstop=4 " tab is 4 spaces
set softtabstop=4 " while editing, tab counts as 4 spaces
set number " adds line numbers
set nocursorline " [doesnt] highlights the line of the cursor
set wildmenu " adds a menu while cycling through commands
set lazyredraw " redraw only when needed - leading to faster macros
set incsearch " search as characters are entered
set hlsearch " highlight the matches

"ALL KEY REMAPPINGS"
"COMMENTED DUE TO ME BEING A BEGINNER
"nnoremap <leader>l ^ " ,l moves to the end
"nnoremap <leader>h $ " ,h moves to the beginning
"nnoremap $ <nop> " removes keybinding for these
"nnoremap ^ <nop>
nnoremap <space> zo " makes space open the fold 
nnoremap j gj " makes j go down visually, not skip
nnoremap k gk " makes k go up visually, not skip
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

"For automatic fold saving/loading
au BufWinLeave * mkview
au BufWinEnter * silent loadview

"VIM-PLUG"
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"OTHER"
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:rehash256 = 1
set t_Co=256

"This is all for now, as I am a beginner.
"To see the rest, more advanced stuff, check this:
	"https://dougblack.io/words/a-good-vimrc.html

