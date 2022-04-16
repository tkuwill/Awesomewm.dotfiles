" BACKGROUND COLOR SETTING  --------------------------------------------------------------- {{{
set background=dark
colorscheme PaperColor
set t_Co=256

" }}}

" General config --------------------------------------------------------------------------- {{{
set cursorline
set wildmenu
set splitbelow splitright
set ruler
set number
syntax on
set hlsearch
set softtabstop=4
set listchars=tab:>~,space:.
set cindent
set ai

" }}}

" set laststatus=2
" Some funky status bar code its seems
" https://stackoverflow.com/questions/9065941/how-can-i-change-vim-status-line-colour
" Formats the statusline ------------------------------------------------------------------- {{{
set laststatus=2            " set the bottom status bar

"function! ModifiedColor()
"    if &mod == 1
"        hi statusline guibg=White ctermfg=8 guifg=OrangeRed4 ctermbg=15
"    else
"        hi statusline guibg=White ctermfg=8 guifg=DarkSlateGray ctermbg=15
"    endif
"endfunction

"au InsertLeave,InsertEnter,BufWritePost   * call ModifiedColor()
" default the statusline when entering Vim
"hi statusline guibg=White ctermfg=8 guifg=DarkSlateGray ctermbg=15

set statusline=%F                           " file path and name
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%y      "filetype
set statusline+=%h      "help file flag
set statusline+=[%{getbufvar(bufnr('%'),'&mod')?'modified':'saved'}]      
"modified flag

set statusline+=%r      "read only flag

set statusline+=\ %=                        " align left
set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
set statusline+=\ Col:%c                    " current column
"set statusline+=\ Buf:%n                    " Buffer number
"set statusline+=\ [%b][0x%B]\               " ASCII and byte code under cursor

" }}}

" Encoding fixing -------------------------------------------------------------------------- {{{

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set termencoding=utf-8

set fileencoding=utf-8

set encoding=utf-8

" }}}
