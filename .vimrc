execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable  
filetype plugin on  
set number  
let g:go_disable_autoinstall = 0

"vim-go
" Highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1  

let g:go_fmt_command = "goimports"

"neocomplete
let g:neocomplete#enable_at_startup = 1

" tagbar
nmap <C-p> :TagbarOpen fj<CR>

"nerdtree
map <C-n> :NERDTreeToggle<CR>
map <C-j> <C-w>j
map <C-h> <C-w>h
map <C-k> <C-w>k
map <C-l> <C-w>l
"open nerdtree when vim start
"autocmd vimenter * NERDTree

"open nerdtree when there is no file 
function! StartUp()                                                                                                                                                                                   
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()
let NERDTreeShowHidden=1

"vim-go plugin config
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <C-r> <Plug>(go-def)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>ds <Plug>(go-def-split)

au FileType go nmap <Leader>e <Plug>(go-rename)

au FileType go nmap <Leader>s <Plug>(go-implements)

"<leader> key
let mapleader = ','



