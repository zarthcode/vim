set nocompatible	" Disable vi-compatibility

execute pathogen#infect()

syntax enable
filetype plugin indent on

" Theme (light or dark)
set background=dark
colorscheme solarized


" Tab Config
set tabpagemax=15
set cindent
set tabstop=4
set shiftwidth=4
" Search settings
set incsearch		" Highlight as you type.
set ignorecase		" Ignore case...
set smartcase		" ...case UNLESS you include a capital letter.
set hlsearch		" highlight last search opetion

" Clear highlighting
nmap \q :nohlsearch<CR>

" Basic keymappings
imap jj <Esc> 
nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>
nmap j gj
nmap k gk
" Display errors for the current buffer
nmap \e :Errors
"Forces a synstastic check.
nmap \s :SyntasticCheck
nmap \S :SyntasticToggleMode

" Syntastic Options
let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_signs=1
"let g:syntastic_error_symbol='×'
"let g:syntastic_enable_highlighting=0
let g:syntastic_mode_map = { 'mode': 'active',
							\ 'active_filetypes': ['c', 'h', 'cpp', 'hpp'],
							\ 'passive_filetypes': ['puppet'] }
"More command history
set history=1000

" NERD Tree utility mapping
nmap \e :NERDTreeToggle<CR>
autocmd vimenter * if !argc() | NERDTree | endif		" Open NERDTree if no arguments were given.
autocmd bufenter * if (winnr("$") == 1 && exists ("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif		" Close if only NERDTree remains.

" Powerline required:
set laststatus=2	" Always show the statusline
set encoding=utf-8	" Necessary to show Unicode glyphs

" Powerline settings
" execute Pl#Theme#InsertSegment('syntastic', 'after', 'filename')
set formatoptions-=cro
set nrformats+=alpha


" Complete options (disable preview scratch window
"set completeopt=menu,menuone,longest

" Limit popup menu height
"set pumheight=15

" Supertab option for context aware completion
"let g:SuperTabDefaultCompletionType = "context"

" Instead of calling the tool, use libclang directly.
"let g:clang_use_library = 1
"let g:clang_snippets = 1
"let g:clang_snippets_engine = "snipmate"

"Disable auto popup, use <Tab> to autocomplete
"let g:clang_complete_auto = 1

"Show clang errors in the quickfix window
"let g:clang_complete_open = 1
"let g:clang_periodic_quickfix = 1
