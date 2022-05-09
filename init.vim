set number
set mouse=a
set numberwidth=1
set cursorline
set encoding=utf-8
set showcmd
syntax enable
set clipboard=unnamed
set showmatch
set sw=2
set laststatus=2
set virtualedit=all
set spelllang=es
set t_Co=256
setlocal spell


function! s:write_server_name() abort
  let nvim_server_file = '/private/tmp/vimtexserver.txt'
  call writefile([v:servername], nvim_server_file)
endfunction

augroup vimtex_common                     
  autocmd!
  autocmd FileType tex call s:write_server_name()
augroup END

call plug#begin('/Users/diego/.config/nvim/plugged/')
Plug 'chun-yang/auto-pairs'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'rhysd/vim-grammarous'
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'kovetskiy/sxhkd-vim' 
"colorscheme
Plug 'dylanaraps/wal'

"sintax"
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
"autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Status var
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
call plug#end()


"Theme"
"colorscheme dracula
colorscheme onehalfdark

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:python3_host_prog = '/Users/diego/opt/anaconda3/bin/python3'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit="vertical"

"Latex"
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:LatexBox_latexmk_options = '-pvc'
let g:tex_indent_brace=0


let mapleader=" "
"nmap el atajo que vamos a utilizar funciona en modo normal"
nmap <Leader>s <Plug>(easymotion-s2)

nmap <Leader>c :LanguageToolCheck <CR>
nmap <Leader>a :LanguageToolClear <CR>
nmap <Leader>m z1= <CR>

nmap <Leader>se :set spell <CR>
"guardar
nmap <Leader>ss :w <CR>
"correr latex
nmap <Leader>ll \ll <CR>
"desactivar coc
nmap <Leader>cd :CocDisable <CR>
nmap <Leader>ce :CocEnable <CR>


inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
nmap <Leader>nt :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

source /Users/diego/.config/nvim/plugged/coc.nvim/coc.config
source /Users/diego/.config/nvim/plugged/Nvim-R/r.config

inoremap ;; <Esc>      
nmap <Leader>ul :UltiSnipsEdit <CR>



