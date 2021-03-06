call plug#begin()
" File Navigation
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'

" Linting
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Util and Config
Plug 'b3nj5m1n/kommentary'
Plug 'romgrk/barbar.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'vimlab/split-term.vim'
Plug 'cespare/vim-toml'
Plug 'pechorin/any-jump.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 

" Colorschemes and Styling
Plug 'joshdick/onedark.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'folke/tokyonight.nvim'
Plug 'ayu-theme/ayu-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'andweeb/presence.nvim'

" Web Development
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'eslint/eslint'
Plug 'alvan/vim-closetag'

Plug 'jremmen/vim-ripgrep'
call plug#end()

" Color
set termguicolors
set t_Co=256
set bg=dark
let ayucolor="mirage"
let g:tokyonight_style = "storm"
" colorscheme palenight
colorscheme onedark

" Line Numbers
set number
set relativenumber

" Tabs
filetype plugin indent on
set smartindent
set tabstop=4
set shiftwidth=4
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType javascriptreact setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescriptreact setlocal shiftwidth=2 tabstop=2
set expandtab

" NERDTree
let g:NERDTreeWinSize=25
set encoding=UTF-8
nnoremap <C-n> :NERDTreeToggle<CR>
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1

" Preferences
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Leader>t :tabnew<CR>
map <Space> <Leader>
set mouse=a
map <Leader>[ 50<C-W>+
map <Leader>] 50<C-W>-
map <Leader>= <C-W>=
map <Leader>c "*y
nnoremap <Leader>e :CocDiagnostics<CR>

" Bufferline
let bufferline = get(g:, 'bufferline', {})
nnoremap <silent>    <A-c> :BufferClose<CR>
let bufferline.auto_hide = v:true
noremap <leader>1 :BufferGoto 1<cr>
noremap <leader>2 :BufferGoto 2<cr>
noremap <leader>3 :BufferGoto 3<cr>
noremap <leader>4 :BufferGoto 4<cr>
noremap <leader>5 :BufferGoto 5<cr>
noremap <leader>6 :BufferGoto 6<cr>
noremap <leader>7 :BufferGoto 7<cr>
noremap <leader>8 :BufferGoto 8<cr>
noremap <leader>9 :BufferGoto 9<cr>
noremap <leader>0 :BufferLast<cr>
noremap <leader>x :BufferClose<cr>
noremap <Tab> :BufferNext<cr>

" Term
nnoremap <Leader>v :VTerm<CR>
set splitright
let g:split_term_default_shell = "pwsh"

" Prettier
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
"autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

" HTML Colors
hi tsxTagName guifg=#E06C75
hi tsxComponentName guifg=#E06C75
hi tsxOpenTag guifg=#F99575
hi tsxCloseTag guifg=#89DDFF
hi tsxCloseTagName guifg=#E06C75
hi tsxAttrib guifg=#F8BD7F cterm=italic

" HTML Auto-Complete
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.tsx'

" Ignore Node_Modules in Ctrl P
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Custom Commands
command! Scratch new | setlocal bt=nofile bh=wipe nobl noswapfile nu
command! -nargs=+ Cmd :new<bar> setlocal bt=nofile bh=wipe nobl noswapfile nu <bar> :read !<args><CR> 

" Run Cur File 
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
