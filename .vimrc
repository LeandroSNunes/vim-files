"Pathogen configuration ###### 
  execute pathogen#infect()
  syntax on
  filetype plugin indent on
"#############################

"Basic configuration #########
  set nocompatible
  set encoding=utf-8
  set history=1000                "Store lots of :cmdline history
  set mouse=nvr
  set backspace=indent,eol,start  "Allow backspace in insert mode
  set number                      "Line numbers are good
  set showcmd                     "Show incomplete cmds down the bottom
  set showmode                    "Show current mode down the bottom
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
  set showmatch
  set foldmethod=manual
"#############################

"Shortcuts ##################
  nmap ,cs :let @*=expand("%")<CR>      "exibe o caminho relativo para o arquivo
  nmap ,cl :let @*=expand("%:p")<CR>    "exibe o caminho absoluto para o arquivo
"###########################
