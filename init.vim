call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'wakatime/vim-wakatime' "Gerenciamento de tempo de uso em projects
Plug 'terryma/vim-multiple-cursors' "Multiple cursosr semelhante ao sublime <c-n> + c
Plug 'sheerun/vim-polyglot'         
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "fuzzy finder <c-p>. Verificar doc para instalar dependencias 
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary' 
Plug 'jiangmiao/auto-pairs' "Auto-complete brackets, parens, quotes in pair.
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'
"Plug 'ncm2/ncm2-tmux'
"Plug 'ncm2/ncm2-jedi'
"Plug 'ncm2/ncm2-tern'
"Plug 'ncm2/ncm2-cssomni'
"Plug 'ncm2/ncm2-path'
"Plug 'ncm2/ncm2-syntax'
"Plug 'ncm2/ncm2-bufword'Plug 'ncm2/ncm2-ultisnips'
"Plug 'dense-analysis/ale'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
call plug#end()
"enable ncm2 for all buffers
"autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANT= :help Ncm2PopupOpen for more information
"set completeopt=noinsert,menuone,noselect

colorscheme gruvbox 
set background=dark
set updatetime=300

set hidden
set relativenumber
set inccommand=split
set termguicolors
set expandtab
set textwidth=69  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line


let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sc :source ~/.config/nvim/init.vim<cr>

"Define o atalho Ctrl + P para utilizar o fzf fileS
nnoremap <c-p> :Files<cr> 
nnoremap <c-f> :Ag<space>
nnoremap <C-Down> ddp
nnoremap <C-Up> ddkP

"  autocomplete neoclide
"  Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

"Comentar linhas usando <leader> + /
"Config do plugin tpope/Commentary
nnoremap <leader>/ :Commentary<cr>
vnoremap <leader>/ :Commentary<cr>

"To use `ALT+{h,j,k,l}` to navigate windows from any mode:
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Do not use arrows in Normal mode
nnoremap <silent> <Up>    <Nop>
nnoremap <silent> <Down>  <Nop>
nnoremap <silent> <Left>  <Nop>
nnoremap <silent> <Right> <Nop>

" Zoom in em split - [z]oom [in]
" Os comandos padrão para dar zoom em split são:
" - Ctrl + W + _ = Define o split atual com a maior altura possível
" - Ctrl + W + | = Define o split atual com a maior largura possível
" - Ctrl + W + = = Tenta definir todas as janelas com o mesmo tamanho
nnoremap zin <c-w>_ <c-w>\|
" Zoom out - [z]oom [n]ot [i]n
nnoremap zni <c-w>= 


"let g:UltiSnipsEditSplit="vertical"
"
"let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
