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
  set showmatch
  set foldmethod=manual

  "exibe o caminho relativo para o arquivo
  nmap ,cs :let @*=expand("%")<CR> 
  "exibe o caminho absoluto para o arquivo
  nmap ,cl :let @*=expand("%:p")<CR>
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
  if &term =~ "xterm" || &term =~ "screen"
    let g:CommandTCancelMap = ['<ESC>', '<C-c>']
    let g:CommandTMaxHeight=30
    let g:CommandTMaxFiles=10000
    let g:CommandTMaxDepth=10
    let g:CommandTNeverShowDotFiles=1
    let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
    let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
  endif
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
  let g:airline_theme='badwolf'
  "let g:airline_theme='dark'
  let g:airline_enable_fugitive=1
  set laststatus=2     " Always display the statusline in all windows
  function! AirlineInit()
    let g:airline_section_x = '%{strftime("%c")}' 
  endfunction
  autocmd VimEnter * call AirlineInit()
"}}}

"html5.vim configuration {{{
  let g:event_handler_attributes_complete = 1
  let g:rdfa_attributes_complete = 0
  let g:microdata_attributes_complete = 0
  let g:aria_attributes_complete = 0
"}}}

"TagList plugin configuration {{{
  let Tlist_Use_Right_Window=1
  let Tlist_Auto_Open=0
  let Tlist_Enable_Fold_Column=0
  let Tlist_Compact_Format=0
  let Tlist_WinWidth=35
  let Tlist_Exit_OnlyWindow=1
  let Tlist_File_Fold_Auto_Close = 1
  nmap <LocalLeader>tt :Tlist<cr>
"}}}

"Permite identar JSON {{{
  au FileType json setlocal equalprg=python\ -m\ json.tool
"}}}

