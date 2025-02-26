"Pathogen configuration ######
  execute pathogen#infect()
  filetype plugin indent on
"#############################

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'haya14busa/incsearch.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'ngmy/vim-rubocop'
Plug 'zerowidth/vim-copy-as-rtf'
Plug 'wakatime/vim-wakatime'
Plug 'hdima/python-syntax'
Plug 'irrationalistic/vim-tasks'
Plug 'ekalinin/dockerfile.vim'
Plug 'rking/ag.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'ddollar/nerdcommenter'
Plug 'tomtom/tcomment_vim'
Plug 'zerowidth/vim-copy-as-rtf'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-endwise'
Plug 'alvan/vim-closetag'
Plug 'ngmy/vim-rubocop'
Plug 'yggdroot/indentline'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'madox2/vim-ai'

call plug#end()

syntax enable

"Basic configuration #########
  set nocompatible
  set encoding=utf-8
  set fileencoding=utf-8
  set fileencodings=utf-8
  set bomb
  set binary
  set ttyfast
  set number	                      "Show line numbers
  set nowrap                        "Wrap lines
  let &colorcolumn="120,".join(range(120,999),",")
  set showmatch	                    "Highlight matching brace
  set visualbell	                  "Use visual bell (no beeping)
  set hlsearch	                    "Highlight all search results
  set smartcase	                    "Enable smart-case search
  set ignorecase	                  "Always case-insensitive
  set incsearch	                    "Searches for strings incrementally
  set autoindent	                  "Auto-indent new lines
  set expandtab	                    "Use spaces instead of tabs
  set shiftwidth=2	                "Number of auto-indent spaces
  set smartindent	                  "Enable smart-indent
  set smarttab	                    "Enable smart-tabs
  set softtabstop=2	                "Number of spaces per Tab
  set ruler	                        "Show row and column ruler information
  set undolevels=1000	              "Number of undo levels
  set backspace=indent,eol,start    "Backspace behaviour
  set history=1000                  "Store lots of :cmdline history
  set hidden
  set mouse=nvr
  set mousemodel=popup
  set showcmd                       "Show incomplete cmds down the bottom
  set showmode                      "Show current mode down the bottom
  set gcr=a:blinkon0                "Disable cursor blink
  set autoread                      "Reload files changed outside vim
  set noswapfile
  set nobackup
  set nowb
  set tabstop=2
  set t_Co=256
  set foldmethod=manual
  set clipboard+=unnamed
"#############################

"Shortcuts ##################
  "exibe o caminho relativo para o arquivo
  nmap \fp :let @*=expand("%")<CR>
  "exibe o caminho absoluto para o arquivo
  nmap \fP :let @*=expand("%:p")<CR>
  "exibe o diretorio do arquivo
  nmap \fd :let @*=expand("%:p:h")<CR>
  "exibe o nome do arquivo
  nmap \fn :let @*=expand("%:t")<CR>
"############################

"Utils ##################
  autocmd BufWritePre * :%s/\s\+$//e  "remove whitespaces on save
  au FileType json setlocal equalprg=python\ -m\ json.tool "Permite identar json
"############################

"Incsearch ##################
  map /  <Plug>(incsearch-forward)
  map ?  <Plug>(incsearch-backward)
  map g/ <Plug>(incsearch-stay)
  nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>
"############################

"NERDTree configuration #####
  map <C-n> :NERDTreeTabsToggle<CR>
  autocmd StdinReadPre * let s:std_in=1
  " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"###########################

" FZF configuration ######
  nmap <Leader>q :Files<CR>
  nmap <Leader>Q :GFiles<CR>
  nmap <Leader>b :Buffers<CR>
  nmap <Leader>h :History<CR>
  nmap <Leader>t :BTags<CR>
  nmap <Leader>T :Tags<CR>
  nmap <Leader>l :BLines<CR>
  nmap <Leader>L :Lines<CR>
  nmap <Leader>a :Ag<Space>
"##########################

"Solarize configuration #####
  set background=dark
  let g:solarized_termcolors = 256
  let g:solarized_termtrans = 1
  colorscheme solarized
"############################

"Airline configuration ######
  let g:airline_theme='badwolf'
  let g:airline_enable_fugitive=1
  let g:airline_powerline_fonts=1
  set laststatus=2 " Always display the statusline in all windows
  function! AirlineInit()
    let g:airline_section_x = '%{strftime("%c")}'
  endfunction
  autocmd VimEnter * call AirlineInit()
"############################

"Python configuration #########
  let g:python_highlight_all = 1
"#############################

"RuboCop ########
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>
"#############################

"Tasks ########
let g:TasksMarkerBase = '[]'
let g:TasksMarkerDone = '[√]'
let g:TasksMarkerCancelled = '[✘]'
let g:TasksDateFormat = '%Y-%m-%d %H:%M'
let g:TasksAttributeMarker = '@'
let g:TasksArchiveSeparator = '＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿'
"#############################

let g:indentLine_color_term = 235

"Go ########
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"
"#############################
