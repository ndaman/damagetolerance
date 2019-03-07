let g:python3_host_prog = 'D:/Anaconda/envs/py3/python'

call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'}
let g:deoplete#enable_at_startup = 1
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'mhinz/vim-startify'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-fugitive'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plug 'altercation/vim-colors-solarized'
"Plug 'dracula/vim'
Plug 'morhetz/gruvbox'

Plug 'tpope/vim-surround'

Plug 'mattn/emmet-vim'

Plug 'mzlogin/vim-markdown-toc'

Plug 'rhysd/nyaovim-popup-tooltip'

call plug#end()

"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
syntax on
colorscheme gruvbox

" map keyboard for changing windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" map keys for deoplete
imap <C-k>	<Plug>(neosnippet_expand_or_jump)
smap <C-k>	<Plug>(neosnippet_expand_or_jump)
xmap <C-k>	<Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <expr><TAB>
	\ pumvisible() ? "\<C-n>" :
	\ neosnippet#expandable_or_jumpable() ?
	\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
	\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" let NERDTree take over netrw (default folder navigation)
let g:NERDTreeHijackNetrw=1

" workaround for nyaovim's weird argv issue
if exists('g:nyaovim_version')
" delete first arg
	execute '1argd'
" close current buffer
	execute 'bd'
endif

" map NERDTree toggle
map <C-b> :NERDTreeToggle<CR>

" custom snippets file
let g:neosnippet#snippets_directory='~/AppData/Local/nvim/snippets'

" customize markdown toc
nnoremap <C-g> :GenTocGFM<CR>
let g:vmt_auto_update_on_save = 0
