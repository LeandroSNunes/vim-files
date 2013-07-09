"Pathogen configuration {{{
  execute pathogen#infect()
"}}}

"Basic configuration {{{
  filetype plugin indent on
  syntax on
  set nocompatible
  set encoding=utf-8
  set history=1000                "Store lots of :cmdline history
  set mouse=nvr
  set history=1000                "Store lots of :cmdline history
  set backspace=indent,eol,start  "Allow backspace in insert mode
  set number                      "Line numbers are good
  set showcmd                     "Show incomplete cmds down the bottom
"  set showmode                    "Show current mode down the bottom
  set gcr=a:blinkon0              "Disable cursor blink
  set visualbell                  "No sounds
  set autoread                    "Reload files changed outside vim
  set noswapfile
  set nobackup
  set nowb
  set autoindent
  set smartindent
  set smarttab
  set shiftwidth=2
  set softtabstop=2
  set tabstop=2
  set expandtab
  set nowrap
  set t_Co=256
  set laststatus=2     " Always display the statusline in all windows
"}}}

"Solarize configuration {{{
  set background=dark
  let g:solarized_termtrans = 1
  colorscheme solarized
"}}}

"NERDTree configuration {{{
  map <C-n> :NERDTreeTabsToggle<CR>
  "autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif "Fecha o vim se só existir uma janela
  "autocmd vimenter * NERDTreeToggle
  "autocmd BufEnter * if &modifiable | NERDTreeFind | wincmd p | endif
"}}}

"Command-T configuration {{{
  set wildignore+=*.o,*.obj,system*,*.jpg,*.png,*.gif,*.log,tmp,yard_templates,coverage
"}}}

"Markdown plugin configuration {{{
  let g:vim_markdown_folding_disabled=1 "- disable folding
"}}}

"Powerline configuration {{{
  "set noshowmode       " Hide the default mode text (e.g. -- INSERT -- below the statusline)
  "set rtp+=/Users/leandronunes/.vim/bundle/powerline/powerline/bindings/vim
  "if ! has('gui_running')
    "set ttimeoutlen=10
    "augroup FastEscape
    "autocmd!
    "au InsertEnter * set timeoutlen=0
    "au InsertLeave * set timeoutlen=1000
    "augroup END
  "endif
"}}}

"Vim-javascript configuration {{{
  let g:html_indent_inctags = "html,body,head,tbody"
  let g:html_indent_script1 = "inc"
  let g:html_indent_style1 = "inc"
"}}}

"Airline configuration {{{
  let g:airline_powerline_fonts=1
  let g:airline_theme='dark'
  let g:airline_enable_fugitive=1
"}}}
