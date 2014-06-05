"vim rc
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set ambiwidth=single

" Always show statusline
set laststatus=2
"Use 256 colours (Use this setting only if your terminal supports 256
set t_Co=256

" pathogen upload____________________________________

execute pathogen#infect()
syntax on
filetype plugin indent on


" NERD tree __________________________________________
"auto starts nerdtree on vim start up"

autocmd vimenter * NERDTree

" auto starts nerdtree even if no file

autocmd vimenter * if !argc() | NERDTree | endif

"Nerd tree show hidden files

let NERDTreeShowHidden=1

"short cut toggle for nerdtree

map <C-n> :NERDTreeToggle<CR>

map <C-l> :tabn<CR>
map <C-h> :tabp<CR>

"color code for solarized color theme
set background=dark


" close nerd tree when files are closed

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Colorscheme settings________________________________

"set font______________________________________________

set guifont=Source\ Code\ Pro\ Light:h12

"Set Encoding________________________________________

set encoding=utf8


"Numbered Lines________________________________________

set number

"Keep cursor away from edges of screen________________

set so=14

" highlight cursor line______________________________

augroup CursorLine
	au!
	au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
	au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
	au WinLeave * setlocal nocursorline
	au WinLeave * setlocal nocursorcolumn
augroup END

" Tab settings ________________________________________

set expandtab
set shiftwidth=2
set ts=2
set smarttab
set cindent
let indent_guides_enable_on_vim_startup = 1

" make trailing whitespace highlighted _______________________

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" leave insert mode after "updatetime" (4s by default)__________

"au CursorHoldI * stopinsert

" unmap arrow keys____________________________________________

no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <up>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

" Quick pairing autos__________________________________________

imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i



