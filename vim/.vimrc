if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   "set fileencodings=ucs-bom,gbk,utf-8,cp936,latin1
   "let &termencoding=&encoding
   set fileencodings=utf-8,gbk,ucs-bom,cp936
   "set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936
endif

set nocompatible	" Use Vim defaults (much better!)
set bs=2		" allow backspacing over everything in insert mode
set ai			" always set autoindenting on
"set backup		" keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
			" than 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set ts=4
set si
set shiftwidth=4
set expandtab
set smarttab

"function s:set4java()
"  set shiftwidth=4
"  set expandtab
"  set smarttab
"endfunction
"function g:set4spcshift()
"  set shiftwidth=4
"  set expandtab
"  set smarttab
"endfunction
"
"function s:set4c()
"    call g:set4spcshift()
"endfunction
"
"function s:set4py()
"    call g:set4spcshift()
"endfunction

" Only do this part when compiled with support for autocommands
if has("autocmd")
  filetype plugin indent on
  " In text files, always limit the width of text to 78 characters
  autocmd BufRead *.txt set tw=78
  " For java source files in Android. Added by YangMingzhao
  "autocmd BufRead *.java call s:set4java()
  "autocmd BufRead *.c call s:set4c()
  "autocmd BufRead *.h call s:set4c()
  "autocmd BufRead *.cpp call s:set4c()
  "autocmd BufRead *.py call s:set4py()
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal g'\"" |
  \ endif

  autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
  autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
  au BufRead,BufNewFile *.vala            setfiletype vala
  au BufRead,BufNewFile *.vapi            setfiletype vala
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

if &term=="xterm"
     set t_Co=8
     set t_Sb=[4%dm
     set t_Sf=[3%dm
endif

"""""""""""""""""""""""""""""
"         own env           "
"""""""""""""""""""""""""""""
let mapleader=","
"helptags ~/.vim/doc

""""""""""""""""""""""""""""""
" netrw setting
""""""""""""""""""""""""""""""
let g:netrw_winsize = 30
nmap <silent> <leader>fe :Sexplore!<cr>

""""""""""""""""""""""""""""""
"       bufferexplorer
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.

let g:Tlist_Ctags_Cmd = 'ctags-exuberant'
let g:Tlist_Show_One_File=1

""""""""""""""""""""""""""""""
" winManager setting
""""""""""""""""""""""""""""""
let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <silent> <C-W><C-F> :FirstExplorerWindow<cr>
nmap <silent> <C-W><C-B> :BottomExplorerWindow<cr>
nmap <silent> <leader>wm :WMToggle<cr> 
colorscheme slate

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For Emacs-like command-line-edit HotKey.Added by YangMingzhao
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" start of line
cnoremap <C-A>		<Home>
" back one character
cnoremap <C-B>		<Left>
" delete character under cursor
cnoremap <C-D>		<Del>
" end of line
cnoremap <C-E>		<End>
" forward one character
cnoremap <C-F>		<Right>
" recall newer command-line
cnoremap <C-N>		<Down>
" recall previous (older) command-line
cnoremap <C-P>		<Up>
" back one word
cnoremap <Esc><C-B>	<S-Left>
cnoremap <A-B>	<S-Left>
" forward one word
cnoremap <Esc><C-F>	<S-Right>


"set guifont=Monaco\ for\ Powerline\ 11


"let g:clj_highlight_builtins=1      " Highlight Clojure's builtins
"let g:clj_paren_rainbow=1           " Rainbow parentheses'!
let vimclojure#HighlightBuiltins = 1
let vimclojure#ParenRainbow = 1

"let $GTAGSLABEL = 'native-pygments'
"let $GTAGSCONF = '/home/osboxes/dotfiles/gtags/gtags.conf'
"set cscopeprg='gtags-cscope'
"set csprg='gtags-cscope'
call plug#begin('~/.vim/plugged')
Plug 'dart-lang/dart-vim-plugin'
call plug#end()
