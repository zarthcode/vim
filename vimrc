execute pathogen#infect()

syntax enable
filetype plugin indent on

set background=light
colorscheme solarized

set tabpagemax=15
set cindent
set tabstop=4
set shiftwidth=4

" Basic keymappings
imap jj <Esc> 

" NERD Tree utility mapping
nmap \e :NERDTreeToggle<CR>


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
"hi comment ctermfg=grey
