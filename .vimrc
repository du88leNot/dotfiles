set t_co=256
filetype off
syntax on
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
colorscheme darth

" Rebind <Leader> key and make quicksave command.
let mapleader = ","
inoremap jk <esc>

" Quicksave command
noremap <C-Z> :update<CR>

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" bind Ctrl+<movement> keys to move around the windows, instead of using
"Ctrl+w + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"Set lin numbers and autowrap
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

"Usefull settings python indents cough real men use spaces!
set history=700
set undolevels=700
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


set hlsearch
set incsearch
set ignorecase
set smartcase

set nobackup
set nowritebackup
set noswapfile

map <F8> :NERDTreeToggle<CR>

autocmd Filetype python map <buffer> <f5> :w<cr>:!python %<cr>

let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_select_first = 0
let g:jedi#popup_on_dot = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

""Supertab
let g:SuperTabDefaultCompletionType = "context"
" Better navigating through omnicomplete option list
" " See
"http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>


