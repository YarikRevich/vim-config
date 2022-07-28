" Sets some settings, which are used for installed plugins
" or built-in functionality
"
let g:airline#extensions#tabline#enabled = 1
set backspace=indent,eol,start

" Automation for functionality added by plugins or built-in tools 

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Custom shortcuts used to simplify some complicated actions

nnoremap <C-Up> <Up>ddp<Up>
nnoremap <C-Down> ddp
imap <C-BS> daw<CR>

" All the used plugins 

call plug#begin('~/.vim/plugged')

" Plugins installed from GitHub

Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'https://github.com/neoclide/coc-java.git'
Plug 'https://github.com/preservim/nerdtree.git'

" Plugins installed from other resources

Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
Plug 'https://tpope.io/vim/fugitive.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
