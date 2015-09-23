" Turn spell checking on ?
"setlocal spell spelllang=en_us

syntax on
set number
set wrap
set linebreak "disables line breaks
set nolist
"set nowrap
set ruler   
set tw=0
set wrapmargin=0

"Indentation
set tabstop=4 
set shiftwidth=4
set autoindent
" set expandtab

"Folding
set foldlevel=1
set foldmethod=indent
set foldnestmax=10
set nofoldenable
vnoremap < <gv<CR> 
vnoremap > >gv<CR>

"Search
set hlsearch
set incsearch
set smartcase
set showmatch
nmap <silent> ,/ :nohlsearch<CR>

set ic
map <S-RIGHT> <C-w>>
map <S-LEFT> <C-w><
imap jk <ESC>

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
highlight Search guibg='Purple' guifg='NONE'

"New leader key
let mapleader = ","

"Mouse
set mouse=a
nnoremap <Leader>a <Esc>:set mouse=a<CR>
nnoremap <Leader>r <Esc>:set mouse=r<CR>

"Saving
nnoremap fj <Esc>:w<CR>
nnoremap wq <Esc>:wqa<CR>
nnoremap qa <Esc>:qa!<CR>

"Set copy and paste behaviour
set clipboard=unnamed

"map sort function to a key, only in virtual mode
vnoremap <Leader>s :sort<CR>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Tabs
map <leader>n esc:tabprevious<CR>
map <leader>m esc:tabnext<CR>

set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file


"Use pathogen to install plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
execute pathogen#infect()
Helptags

" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone https://github.com/Lokaltog/vim-powerline.git
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:+
set term=xterm-256color
set termencoding=utf-8

" Settings for python-mode
" Note: I am no longer using this. Leave this commented out
" and uncomment the part about jedi-vim instead
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode

let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
map <Leader>g:call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
" let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_goto_definition_cmd = 'new'
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion_bind = '<C-space>'
let g:pymode_syntax = 1
let g:pymode_lint_ignore = "W0611,W0612,W191,E501,W601,E731,E302"
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
"" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
"
"
"" cd ~/.vim/bundle
"" git clone https://github.com/scrooloose/nerdcommenter.git
"filetype plugin on
"
"" Python folding
"" mkdir -p ~/.vim/ftplugin
"" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
"
"
""NERDTREE
"" cd ~/.vim/bundle
"" git clone https://github.com/scrooloose/nerdtree.git
autocmd VimEnter * NERDTree

autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4 tw=0 wm=0 wrap foldlevel=1 foldnestmax=2 foldenable
autocmd FileType *.pyx setlocal expandtab tabstop=4 shiftwidth=4 tw=0 wm=0 wrap foldlevel=1 foldnestmax=2 foldenable
autocmd FileType make setlocal noexpandtab
let g:NERDTreeWinSize=20

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Some useful vim commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"select                                   v                                     
"select row(s)                            SHIFT + v                             
"select blocks (columns)                  CTRL  + v                             
"indent selected text                     >                                     
"unindent selected text                   <                                     
"list buffers                             :ls                                   
"open buffer                              :bN (N = buffer number)               
"print                                    :hardcopy                             
"open a file                              :e /path/to/file.txt                  
"                                         :e C:\Path\To\File.txt                
"sort selected rows                       :sort                                 
"source vim file						  :so ~/.vimrc
"search for word under cursor             *                                     
"open file under cursor                   gf                                    
"  (absolute path or relative)                                                  
"format selected code                     =                                     
"select contents of entire file           ggVG                                  
"convert selected text to uppercase       U                                     
"convert selected text to lowercase       u                                     
"invert case of selected text             ~                                     
"convert tabs to spaces                   :retab                                
"start recording a macro                  qX (X = key to assign macro to)       
"stop recording a macro                   q                                       
"playback macro                           @X (X = key macro was assigned to)    
"replay previously played macro *         @@                                    
"auto-complete a word you are typing **   CTRL + n                              
"bookmark current place in file           mX (X = key to assign bookmark to)    
"jump to bookmark                         `X (X = key bookmark was assigned to  
"                                             ` = back tick/tilde key)          
"show all bookmarks                       :marks                                
"delete a bookmark                        :delm X (X = key bookmark to delete)   
"delete all bookmarks                     :delm!                                 
"split screen horizontally                :split                                
"split screen vertically                  :vsplit                               
"navigating split screens                 CTRL + w + j = move down a screen     
"                                         CTRL + w + k = move up a screen       
"                                         CTRL + w + h = move left a screen     
"                                         CTRL + w + l = move right a screen    
"close all other split screens            :only                                 
"
"*  - As with other commands in vi, you can playback a macro any number of times.
"     The following command would playback the macro assigned to the key `w' 100
"     times: 100@w
"
"** - Vim uses words that exist in your current buffer and any other buffer you 
"     may have open for auto-complete suggestions.
"
" ========================
" Code Folding 
" ========================
"zf#j creates a fold from the cursor down # lines.
"zf/string creates a fold from the cursor to string .
"zj moves the cursor to the next fold.
"zk moves the cursor to the previous fold.
"zo opens a fold at the cursor.
"zO opens all folds at the cursor.
"zc close a fold at the cursor.
"zm increases the foldlevel by one.
"zM closes all open folds.
"zr decreases the foldlevel by one.
"zR decreases the foldlevel to zero -- all folds will be open.
"zd deletes the fold at the cursor.
"zE deletes all folds.
"[z move to start of open fold.
"]z move to end of open fold. 
