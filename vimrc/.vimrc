" Installation:
" *Install vim-plug
" *Install packages by typing :PlugInstall to install all packages

" basic setup
set number "display line number
" set clipboard=unnamedplus
set clipboard=unnamed
syntax on
set t_Co=256
" colorscheme desert
set tabstop=2       " The width of a TAB is set to 4.
set shiftwidth=2    " Indents will have a width of 4.
set softtabstop=2   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.
set ai

" code folder
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

set nobackup "(required) make vim no backup auto creating
set noswapfile "(required) make vim no swap file auto creating
set noundofile "(required) make undo file disable

" Rendering
set ttyfast

" Don't know how to use:
" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

set fileformat=unix

" Shortcut setting (remapping)
map <C-c> :NERDTreeToggle<CR>

nmap vs :vsplit<cr>
nmap sp :split<cr>
nmap pc :q!<cr>
nmap nt :tabnew<cr>
nmap fq :wq<cr>
nmap nw :w<cr>
" nmap if gg<cr>v<cr>G<cr>

" N key: go to the start of the line
noremap <C-n> 0
" " I key: go to the end of the line
noremap <C-i> $

nmap ƒ <C-f>
nmap ∫ <C-b>
nmap ∂ 4<C-e>
nmap ˙ 4<C-y>

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" turn relative line numbers on
" set relativenumber
" set rnu
"
" " turn relative line numbers off
" :set norelativenumber
" :set nornu
"
" " toggle relative line numbers
" :set relativenumber!
" :set rnu!

" Vim-Plugs
call plug#begin('~/.vim/plugged')
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'posva/vim-vue'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
" Plug 'scrooloose/syntastic'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'lervag/vimtex'
call plug#end()

" vim-vue config
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

" gruvbox theme settings
let g:gruvbox_italic=1
let g:gruvbox_termcolors=16
colorscheme gruvbox

let g:airline_theme='base16color'

" vim airline plugins and theme config
set noshowmode
set laststatus=0
let g:airline_powerline_fonts = 1

set background=dark
let g:gruvbox_italic=0
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

hi Normal guibg=NONE ctermbg=NONE

" powerline settings
set rtp+=/usr/local/lib/python3.6/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

" imap jj <Esc>


" Syntaisic configs
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

let g:tex_flavor = 'latex'
