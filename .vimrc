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
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"###########################

"CtrlP configuration ######
  set runtimepath^=~/.vim/bundle/ctrlp.vim
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o,*.obj,system*,*.jpg,*.png,*.gif,*.log
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
  let g:ctrlp_by_filename = 0

  if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
  endif
"##########################

"Solarize configuration #####
  set background=dark
  let g:solarized_termtrans = 1
  let g:solarized_termcolors=256
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

"Syntastic configuration #####
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:loaded_syntastic_ruby_mri_checker = 1
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
  let g:syntastic_html_tidy_ignore_errors = [" proprietary attribute \"ng-"]
  let g:syntastic_eruby_ruby_quiet_messages = {"regex": "possibly useless use of a variable in void context"}
"############################

"Javascript configuration #####
  let g:javascript_plugin_jsdoc = 1
"############################

"JShint ########
  let jshint2_save = 1
"#############################

"Emmet configuration #########
  let g:user_emmet_install_global = 0
  autocmd FileType html,css EmmetInstall
"#############################

"RuboCop ########
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>
"#############################

let g:indentLine_color_term = 235
