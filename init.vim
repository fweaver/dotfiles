"filetype off
call plug#begin('~/.config/nvim/plugged')

" plugin list
"Plug 'VundleVim/Vundle.vim'
Plug 'vim-airline/vim-airline'
"Plug 'mgee/lightline-bufferline'
"Plug 'bling/vim-bufferline'
"Plugin 'edkolev/promptline.vim'
Plug 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'tpope/vim-rails'
"Plugin 'vitalk/vim-simple-todo'
"Plugin 'Shougo/vimproc.vim'
"Plugin 'Shougo/vimshell.vim'
"Plug 'altercation/vim-colors-solarized'
"Plugin 'mattn/emmet-vim'
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'matze/vim-move'
"Plugin 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
"Plug 'chemzqm/wxapp.vim'
"Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
"Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
"Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Raimondi/delimitMate'
"Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
"Plug 'mhartington/oceanic-next'
Plug 'dracula/vim'
"Plug 'alvan/vim-closetag'

call plug#end()

filetype plugin indent on

" plugin config
" nerdtree <tree>
map <leader>t :NERDTreeToggle<CR>

" vim-colors-solarized <background>
"call togglebg#map("<leader>b")
"let g:solarized_termcolors=256

" ctrlp <find>
let g:ctrlp_map = "<leader>f"

" general config
set encoding=utf-8
"set t_Co=256
syntax on
syntax enable
"set background=dark
"colorscheme solarized

colorscheme dracula
set background=dark
map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"let g:gruvbox_contrast_dark="soft"
"let g:gruvbox_contrast_light="soft"
" set hlsearch
set hidden
set number
hi LineNr term=bold cterm=NONE ctermfg=grey ctermbg=NONE gui=NONE guibg=NONE
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set cindent shiftwidth=2
set smartindent
set mouse=a
set cursorline
set cursorcolumn
hi CursorLine term=none cterm=none guibg=#303000 ctermbg=234
filetype indent on
filetype plugin on
filetype plugin indent on
set clipboard=unnamedplus

" shortcut config
imap jj <Esc>
nnoremap <Space> :
map <TAB> >
map	<S-TAB> <
"vmap <silent> ;h :s?^\(\s*\)+ '\([^']\+\)',*\s*$?\1\2?g<CR>
"vmap <silent> ;q :s?^\(\s*\)\(.*\)\s*$? \1 + '\2'?<CR>
" shift + j/k to switch buffer
nmap <silent> <S-j> :bp<CR>
nmap <silent> <S-k> :bn<CR>
" delete buffer
nmap <silent> <leader>d :bn\|bd #<CR>
" U = redo
nmap <S-u> <C-r>
" leader-s to save
noremap <silent> <leader>s  :update<CR>
vnoremap <silent> <leader>s  <C-C>:update<CR>gv
" inoremap <silent> <C-S> <C-O>:update<CR> to enable insert mode after saving
inoremap <silent> <leader>s  <Esc>:update<CR>
" wxapp.vim rebuild
nmap <leader>r <Plug>WxappReload

" omnicomplete
set completeopt=noinsert,longest,menuone
inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" deoplete
let g:deoplete#enable_at_startup = 1
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"let g:deoplete#omni#functions = {}
"let g:deoplete#omni#functions.javascript = [
"  \ 'tern#Complete',
"  \ 'jspc#omni'
"\]
"let g:tern#command = ['tern']
"let g:tern#arguments = ['--persistent']

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_buffers = 1

" term
tnoremap jj <C-\><C-n>
nmap t<Enter> :bo sp term://zsh\|resize 5<CR>i