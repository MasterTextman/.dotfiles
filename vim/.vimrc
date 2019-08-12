"ALL ENABLED FEATURES"
syntax enable " enables syntax processing
" filetype indent on
" this is so that different languages can have different indentations, however to do this one needs to have a .vim file [ex. python.vim] located in ~/.vim/indent/python.vim

"ALL SET COMMANDS"
"colorscheme redblack
"colorscheme wal
"colorscheme molokai
colorscheme gruvbox
set background=dark
let g:filetype_pl="prolog"
let g:go_fmt_experimental=1
set foldnestmax=3 " guards against doing too much fold nesting
set foldmethod=indent
set nofoldenable
set tabstop=4 " tab is 4 spaces
set softtabstop=4 " while editing, tab counts as 4 spaces
set shiftwidth=4
set expandtab
set number " adds line numbers
set cursorline " [doesnt] highlights the line of the cursor
set wildmenu " adds a menu while cycling through commands
set lazyredraw " redraw only when needed - leading to faster macros
set incsearch " search as characters are entered
set hlsearch " highlight the matches
set number relativenumber

"ALL KEY REMAPPINGS"
"COMMENTED DUE TO ME BEING A BEGINNER
"nnoremap <leader>l ^ " ,l moves to the end
"nnoremap <leader>h $ " ,h moves to the beginning
"nnoremap $ <nop> " removes keybinding for these
"nnoremap ^ <nop>
nnoremap j gj " makes j go down visually, not skip
nnoremap k gk " makes k go up visually, not skip
nnoremap <A-Right> <C-w><Right>
nnoremap <A-Left> <C-w><Left>
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
tnoremap <Esc> <C-\><C-n>
command! -nargs=* T split | terminal <args>
command! -nargs=* VT vsplit | terminal <args>

"For automatic fold saving/loading
augroup AutoSaveFolds
    autocmd!
    autocmd BufWinLeave,BufLeave,BufWritePost ?* nested silent! mkview!
    autocmd BufWinEnter ?* silent! loadview
augroup END

set viewoptions=folds,cursor
set sessionoptions=folds

"SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"TAGBAR
let g:rust_use_custom_ctags_defs = 1  " if using rust.vim
let g:tagbar_type_rust = {
  \ 'ctagsbin' : '/usr/bin/ctags',
  \ 'ctagstype' : 'rust',
  \ 'kinds' : [
      \ 'n:modules',
      \ 's:structures:1',
      \ 'i:interfaces',
      \ 'c:implementations',
      \ 'f:functions:1',
      \ 'g:enumerations:1',
      \ 't:type aliases:1:0',
      \ 'v:constants:1:0',
      \ 'M:macros:1',
      \ 'm:fields:1:0',
      \ 'e:enum variants:1:0',
      \ 'P:methods:1',
  \ ],
  \ 'sro': '::',
  \ 'kind2scope' : {
      \ 'n': 'module',
      \ 's': 'struct',
      \ 'i': 'interface',
      \ 'c': 'implementation',
      \ 'f': 'function',
      \ 'g': 'enum',
      \ 't': 'typedef',
      \ 'v': 'variable',
      \ 'M': 'macro',
      \ 'm': 'field',
      \ 'e': 'enumerator',
      \ 'P': 'method',
  \ },
\ }

"VIM-PLUG"
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mkitt/tabline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf.vim'
"Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
Plug 'https://github.com/majutsushi/tagbar.git'
"if has('nvim')
""  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
""  Plug 'Shougo/deoplete.nvim'
""  Plug 'roxma/nvim-yarp'
""  Plug 'roxma/vim-hug-neovim-rpc'
"endif
"Plug 'Valloric/YouCompleteMe'
"Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kien/rainbow_parentheses.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Raimondi/delimitMate'
Plug 'easymotion/vim-easymotion'
Plug 'rdnetto/YCM-Generator', {'branch': 'stable'}
Plug 'sheerun/vim-polyglot'
Plug 'adimit/prolog.vim'
Plug 'airblade/vim-gitgutter'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'mhinz/vim-startify'
call plug#end()

"vim-align"
nmap ga <Plug>(EasyAlign)

"Markdown"
nmap <C-m> <Plug>MarkdownPreview

"OTHER"
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:rehash256 = 1
set t_Co=256

"TAGBAR"
nmap <F8> :TagbarToggle<CR>

"FZF
map ; :Files<CR>

"if has('nvim') || has('termguicolors')
"    set termguicolors
"endif

set tabpagemax=100
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_server_python_interpreter = "/usr/bin/python"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:ycm_global_ycm_extra_conf = '/home/textman/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:deoplete#enable_at_startup = 1
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
let g:delimitMateAutoClose = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_cr = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_echo_cursor = 1
"autocmd vimenter * NERDTree 
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
set clipboard+=unnamedplus

"This is all for now, as I am a beginner.
"To see the rest, more advanced stuff, check this:
    "https://dougblack.io/words/a-good-vimrc.html

