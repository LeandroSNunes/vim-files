"Pathogen configuration ###### 
  execute pathogen#infect()
  syntax on
  filetype plugin indent on
"#############################

"Basic configuration #########
  set nocompatible
  set encoding=utf-8
  set fileencoding=utf-8
  set fileencodings=utf-8
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
"############################

"NERDTree configuration #####
  map <C-n> :NERDTreeTabsToggle<CR>
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"###########################

"CtrlP configuration ######
  set runtimepath^=~/.vim/bundle/ctrlp.vim
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o,*.obj,system*,*.jpg,*.png,*.gif,*.log
"##########################

"Solarize configuration #####
  set background=dark
  let g:solarized_termtrans = 1
  let g:solarized_termcolors=256
  colorscheme solarized
"############################

"Airline configuration ######
  let g:airline_powerline_fonts=1
  let g:airline_theme='badwolf'
  let g:airline_theme='dark'
  let g:airline_enable_fugitive=1
  set laststatus=2     " Always display the statusline in all windows
  let g:airline#extensions#tabline#enabled = 1
  function! AirlineInit()
    let g:airline_section_x = '%{strftime("%c")}' 
  endfunction
  autocmd VimEnter * call AirlineInit()
"############################

"Emmet configuration #########
  let g:user_emmet_install_global = 0
  autocmd FileType html,css EmmetInstall
"#############################

"Permite identar JSON ########
  au FileType json setlocal equalprg=python\ -m\ json.tool
"#############################













