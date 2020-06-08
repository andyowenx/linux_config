syntax on
set softtabstop=4
set shiftwidth=4
set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set autoindent


" folding
au BufWinEnter *.c,*.cpp,*.php,*.py,*.pl silent loadview
au BufWinLeave *.c,*.cpp,*.php,*.py,*.pl mkview

if has("cscope")
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
" add any database in current directory
if filereadable("cscope.out")
cs add cscope.out
" else add database pointed to by environment
elseif $CSCOPE_DB != ""
cs add $CSCOPE_DB
endif
set csverb
set cscopetag
set cscopequickfix=s-,g-,c-,d-,t-,e-,f-,i-
endif

" folding
set bg=light
hi folded ctermfg=1   "red
hi folded ctermbg=0   "black

" highlight search
hi search ctermfg=0 ctermbg=3

" Taglist
let Tlist_Exit_OnlyWindow = 1
map <F10> :Tlist <CR>
map <F11> :wincmd p <CR>
"nnoremap <silent> <F11> :TlistUpdate <CR>

set showmatch
set nohls

hi Comment      term=bold ctermfg=darkcyan
hi Constant     term=underline ctermfg=Red
hi Special      term=bold ctermfg=Magenta
hi Identifier   term=underline ctermfg=cyan
hi Function     term=underline ctermfg=Blue
hi Statement    term=bold ctermfg=Brown
hi PreProc      term=bold ctermfg=DarkYellow
hi Type         term=bold ctermfg=DarkGreen
hi Ignore       ctermfg=white
hi Error        term=reverse ctermbg=Red ctermfg=White
hi Todo         term=standout ctermbg=Yellow ctermfg=Red
hi Search       term=standout ctermbg=Yellow ctermfg=Black
hi ErrorMsg     term=reverse ctermbg=Red ctermfg=White
hi StatusLine   ctermfg=darkblue  ctermbg=gray
hi StatusLineNC ctermfg=brown   ctermbg=darkblue

set formatoptions=mtcql

set background=dark

"set foldmethod=indent

" Tab
map <F1> <ESC>:tabn 1<CR>
map <F2> <ESC>:tabn 2<CR>
map <F3> <ESC>:tabn 3<CR>
map <F4> <ESC>:tabn 4<CR>
map <F5> <ESC>:tabn 5<CR>
map <F6> <ESC>:tabn 6<CR>
map <F7> <ESC>:tabn 7<CR>
map <F8> <ESC>:tabn 8<CR>
map <F9> <ESC>:tabn 9<CR>
map <C-E> <ESC>:tabclose<CR>
map <C-N> <ESC>:tabnew<CR>
map <C-O> <ESC>:open<CR>
"set cursorline
":hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"hi cursorline guibg=#333333
"hi CursorColumn guibg=#333333
color desert
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40



"se cursorline
"hi cursorLine term=none cterm=none ctermbg=7
"autocmd InsertLeave * hi cursorLine term=none cterm=none ctermbg=7
"autocmd InsertEnter * hi cursorLine term=none cterm=none ctermbg=DarkBlue

set showcmd       " show incomplete commands
set hlsearch      " highlight searched-for phrases
set incsearch     " highlight search as you type
set ruler         " display current line number
"if has("autocmd")
" filetype plugin indent on
"  autocmd FileType text setlocal textwidth=78

" always jump to last edit position when opening a file
"  autocmd BufReadPost *
"    \ if line("'\"") > 0 && line("'\"") <= line("$") |
"    \   exe "normal g`\"" |
"    \ endif
"endif

"function InsertTabWrapper()
"	let col = col('.') - 1
"	if !col || getline('.')[col - 1] !~ '\k'
"	return "\<tab>"
"	else
"	return "\<c-p>"
"	endif
"endfunction
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
map  <F9>  :make<CR>  :copen<CR>  <C-W>10_

let Ws_WinWidth = 30
"tags
set tags=tags;
set autochdir
"Status bar
set ls=2
set statusline=%<%F\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y
highlight StatusLine term=bold,reverse cterm=bold,reverse

"set ai
set nu

"Plugin 'Yggdroot/indentLine'
"let g:indentLine_char = '┊'
"let g:indentLine_color_term = 000
"let g:indentLine_setColors = 0

"=================================================================================================
"https://stackoverflow.com/questions/65076/how-do-i-set-up-vim-autoindentation-properly-for-editing-python-files

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
" make backspaces more powerfull
set backspace=indent,eol,start

"=================================================================================================

