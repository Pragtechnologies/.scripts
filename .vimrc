"Add Plug
call plug#begin('~/.vim/plugged')

Plug 'wincent/Command-T'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/vimproc.vim'
Plug 'Quramy/tsuquyomi'
Plug 'isRuslan/vim-es6'
Plug 'mustache/vim-mustache-handlebars'
Plug 'tpope/vim-markdown'
Plug 'Townk/vim-autoclose'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/closetag.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'cakebaker/scss-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'slim-template/vim-slim'
Plug 'heartsentwined/vim-emblem'
Plug 'digitaltoad/vim-pug'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'posva/vim-vue'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'ludovicchabant/vim-gutentags'
Plug 'c-brenn/phoenix.vim'
Plug 'tpope/vim-projectionist'
Plug 'slashmili/alchemist.vim'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
call plug#end()


syntax on
filetype plugin indent on

let g:gutentags_cache_dir = '~/.tags_cache'
let g:alchemist_tag_disable = 1
let g:jsx_ext_required = 0

" Emmet configs
" let g:user_emmet_leader_key='<C-m>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" Ale configs
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1

" Noel - after pathogen are loaded
set nocompatible
let mapleader=" "
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
" set ts=2
color desert
set number	" Display the line numbers
set showcmd
set showmode
set backspace=indent,eol,start

set incsearch   " Highlight matches as you type
set hlsearch    " Highlight matches
set wrap        " Turn on line wrapping
set scrolloff=3 " Show 3 lines around the corner
set title       " Set the terminal title
set visualbell  " No beeping
set nobackup    " Don't make a backup before overwriting a file set nowritebackup   "and again
set laststatus=2                  " Show the status line all the time

"" Set encoding
set encoding=utf-8
" useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

map :f :find<space>

" Remap Esc with jj
imap jj <Esc>
" Add Save with ss
map ss :w<cr>
" Map exit
map qq :q <cr>
" Map the source to leader so
map <leader>so :so %<cr>
" Map suspend
map <leader>z <C-Z>
" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmov

set mouse=ia "  Enable your track pad interaction
set clipboard=unnamedplus
vnoremap <C-c> "*y
set antialias " Macvim: smooth fonts
"set listchars=tab:▸\
" Command-T mappings for rails
map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>gj :CommandTFlush<cr>\|:CommandT app/assets/javascripts<cr>
map <leader>gs :CommandTFlush<cr>\|:CommandT app/assets/stylesheets<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
map <leader>gt :CommandTFlush<cr>\|:CommandT spec<cr>
map <leader>gf :CommandTFlush<cr>\|:CommandT features<cr>
map <leader>gl :CommandTFlush<cr>\|:CommandT lib<cr>
map <leader>gp :CommandTFlush<cr>\|:CommandT public<cr>
map <leader>gr :vsplit config/routes.rb<cr>
map <leader>gg :vsplit Gemfile<cr>
map <leader>gl :left :vsplit config/locales/en.yml<cr>
map <leader>ge :CommandTFlush<cr>\|:CommandT config<cr>

" Ember commands
map <leader>ep :CommandTFlush<cr>\|:CommandT app/templates<cr>
map <leader>et :CommandTFlush<cr>\|:CommandT tests<cr>
map <leader>er :CommandTFlush<cr>\|:CommandT app/routes<cr>
map <leader>es :CommandTFlush<cr>\|:CommandT app/styles<cr>
map <leader>em :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>eh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
map <leader>ec :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>eo :CommandTFlush<cr>\|:CommandT app/components<cr>
map <leader>eu :CommandTFlush<cr>\|:CommandT app/utils<cr>
map <leader>ei :CommandTFlush<cr>\|:CommandT app/initializers<cr>

" Phoenix mappings
map <leader>pm :CommandTFlush<cr>\|:CommandT web/models<cr>
map <leader>ps :CommandTFlush<cr>\|:CommandT web/static<cr>
map <leader>pp :CommandTFlush<cr>\|:CommandT web/templates<cr>
map <leader>pt :CommandTFlush<cr>\|:CommandT test<cr>
map <leader>pn :CommandTFlush<cr>\|:CommandT web/channels<cr>
map <leader>pc :CommandTFlush<cr>\|:CommandT web/controllers<cr>
map <leader>pv :CommandTFlush<cr>\|:CommandT web/views<cr>
map <leader>pr :vsplit web/router.ex<cr>

" Phoenix Umbrella mappings
" Db layer
map <leader>uds :CommandTFlush<cr>\|:CommandT apps/db/lib/schemas<cr>
map <leader>udl :CommandTFlush<cr>\|:CommandT apps/db/lib<cr>
map <leader>udc :CommandTFlush<cr>\|:CommandT apps/db/lib/repos<cr>
map <leader>udt :CommandTFlush<cr>\|:CommandT apps/db/test<cr>
map <leader>udg :CommandTFlush<cr>\|:CommandT apps/db/config<cr>
map <leader>udp :CommandTFlush<cr>\|:CommandT apps/db/priv<cr>
map <leader>udf :CommandTFlush<cr>\|:CommandT apps/db<cr>

" Payorlink layer
map <leader>ups :CommandTFlush<cr>\|:CommandT apps/payor_link/assets<cr>
map <leader>upp :CommandTFlush<cr>\|:CommandT apps/payor_link/lib/payor_link/web/templates<cr>
map <leader>upt :CommandTFlush<cr>\|:CommandT apps/payor_link/test<cr>
map <leader>upn :CommandTFlush<cr>\|:CommandT apps/payor_link/lib/payor_link/web/channels<cr>
map <leader>upc :CommandTFlush<cr>\|:CommandT apps/payor_link/lib/payor_link/web/controllers<cr>
map <leader>upv :CommandTFlush<cr>\|:CommandT apps/payor_link/lib/payor_link/web/views<cr>
map <leader>upg :CommandTFlush<cr>\|:CommandT apps/payor_link/config<cr>
map <leader>upf :CommandTFlush<cr>\|:CommandT apps/payor_link<cr>
map <leader>upr :vsplit apps/payor_link/lib/payor_link/web/router.ex<cr>

" Memberlink layer
map <leader>ums :CommandTFlush<cr>\|:CommandT apps/member_link/assets<cr>
map <leader>ump :CommandTFlush<cr>\|:CommandT apps/member_link/lib/member_link_web/templates<cr>
map <leader>umt :CommandTFlush<cr>\|:CommandT apps/member_link/test<cr>
map <leader>umn :CommandTFlush<cr>\|:CommandT apps/member_link/lib/member_link_web/channels<cr>
map <leader>umc :CommandTFlush<cr>\|:CommandT apps/member_link/lib/member_link_web/controllers<cr>
map <leader>umv :CommandTFlush<cr>\|:CommandT apps/member_link/lib/member_link_web/views<cr>
map <leader>umg :CommandTFlush<cr>\|:CommandT apps/member_link/config<cr>
map <leader>umf :CommandTFlush<cr>\|:CommandT apps/member_link<cr>
map <leader>umr :vsplit apps/member_link/lib/member_link_web/router.ex<cr>

" Accountlink layer
map <leader>uas :CommandTFlush<cr>\|:CommandT apps/account_link/assets<cr>
map <leader>uap :CommandTFlush<cr>\|:CommandT apps/account_link/lib/account_link_web/templates<cr>
map <leader>uat :CommandTFlush<cr>\|:CommandT apps/account_link/test<cr>
map <leader>uan :CommandTFlush<cr>\|:CommandT apps/account_link/lib/account_link_web/channels<cr>
map <leader>uac :CommandTFlush<cr>\|:CommandT apps/account_link/lib/account_link_web/controllers<cr>
map <leader>uav :CommandTFlush<cr>\|:CommandT apps/account_link/lib/account_link_web/views<cr>
map <leader>uag :CommandTFlush<cr>\|:CommandT apps/account_link/config<cr>
map <leader>uaf :CommandTFlush<cr>\|:CommandT apps/account_link<cr>
map <leader>uar :vsplit apps/account_link/lib/account_link_web/router.ex<cr>

" Data layer
map <leader>sds :CommandTFlush<cr>\|:CommandT apps/data/lib/schemas<cr>
map <leader>sdc :CommandTFlush<cr>\|:CommandT apps/data/lib/contexts<cr>
map <leader>sdl :CommandTFlush<cr>\|:CommandT apps/data/lib<cr>
map <leader>sdt :CommandTFlush<cr>\|:CommandT apps/data/test<cr>
map <leader>sdg :CommandTFlush<cr>\|:CommandT apps/data/config<cr>
map <leader>sdf :CommandTFlush<cr>\|:CommandT apps/data<cr>

" Admin layer
map <leader>saa :CommandTFlush<cr>\|:CommandT apps/admin/assets<cr>
map <leader>sap :CommandTFlush<cr>\|:CommandT apps/admin/lib/admin/web/templates<cr>
map <leader>sat :CommandTFlush<cr>\|:CommandT apps/admin/test<cr>
map <leader>san :CommandTFlush<cr>\|:CommandT apps/admin/lib/admin/web/channels<cr>
map <leader>sac :CommandTFlush<cr>\|:CommandT apps/admin/lib/admin/web/controllers<cr>
map <leader>sav :CommandTFlush<cr>\|:CommandT apps/admin/lib/admin/web/views<cr>
map <leader>sag :CommandTFlush<cr>\|:CommandT apps/admin/config<cr>
map <leader>saf :CommandTFlush<cr>\|:CommandT apps/admin<cr>
map <leader>sar :vsplit apps/admin/lib/admin/web/router.ex<cr>

" Patient layer
map <leader>saa :CommandTFlush<cr>\|:CommandT apps/patient/assets<cr>
map <leader>sap :CommandTFlush<cr>\|:CommandT apps/patient/lib/patient/web/templates<cr>
map <leader>sat :CommandTFlush<cr>\|:CommandT apps/patient/test<cr>
map <leader>san :CommandTFlush<cr>\|:CommandT apps/patient/lib/patient/web/channels<cr>
map <leader>sac :CommandTFlush<cr>\|:CommandT apps/patient/lib/patient/web/controllers<cr>
map <leader>sav :CommandTFlush<cr>\|:CommandT apps/patient/lib/patient/web/views<cr>
map <leader>sag :CommandTFlush<cr>\|:CommandT apps/patient/config<cr>
map <leader>saf :CommandTFlush<cr>\|:CommandT apps/patient<cr>
map <leader>sar :vsplit apps/patient/lib/patient/web/router.ex<cr>

" Practitioner layer
map <leader>sra :CommandTFlush<cr>\|:CommandT apps/practitioner/assets<cr>
map <leader>srp :CommandTFlush<cr>\|:CommandT apps/practitioner/lib/practitioner/web/templates<cr>
map <leader>srt :CommandTFlush<cr>\|:CommandT apps/practitioner/test<cr>
map <leader>srn :CommandTFlush<cr>\|:CommandT apps/practitioner/lib/practitioner/web/channels<cr>
map <leader>src :CommandTFlush<cr>\|:CommandT apps/practitioner/lib/practitioner/web/controllers<cr>
map <leader>srv :CommandTFlush<cr>\|:CommandT apps/practitioner/lib/practitioner/web/views<cr>
map <leader>srg :CommandTFlush<cr>\|:CommandT apps/practitioner/config<cr>
map <leader>srf :CommandTFlush<cr>\|:CommandT apps/practitioner<cr>
map <leader>srr :vsplit apps/practitioner/lib/practitioner/web/router.ex<cr>

" Map windows
map <leader>mv :vsplit <cr>
map <leader>ms :split <cr>
map <leader>wh <C-W>h <cr>
map <leader>wj <C-W>j <cr>
map <leader>wk <C-W>k <cr>
map <leader>wl <C-W>l <cr>


" Open files with <leader>f
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>

" Mappings to access buffers (don't use "\p" because a
" " delay before pressing "p" would accidentally paste).
" " \l       : list buffers
" " \b \f \g : go back/forward/last-used
" " \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>bf :bp<CR>
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" " Opens an edit command with the path of the currently edited file filled
" in
" " Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <Leader>w :w <C-R>=expand("%:p:h") . "/" <CR>

" Make it easy to navigate on insert mode
imap <C-k> <Up>
imap <C-j> <Down>
imap <C-h> <Left>
imap <C-l> <Right>

" Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=0

" Navigate splits
nmap <tab> <c-w>w

" I want my NERDTree to be updated
map <leader>n :CommandTFlush<cr>\|:NERDTreeToggle<cr>

" Phoenix Test helpers
function! RunPhoenixTests(filename)
  " Write the file and run tests for the given filename
  :w
  :silent !echo;echo;echo;echo;echo

  call ExecuteUmbrellaTest(a:filename)

endfunction

function! RunPhoenixTestFile(...)
  if a:0
    let command_suffix = a:1
  else
    let command_suffix = ""
  endif

  " Run the tests for the previously-marked file.
  let in_spec_file = match(expand("%"), '_test.exs$') != -1
  if in_spec_file
    call SetTestFile()
  elseif !exists("t:grb_test_file")
    return
  end
  call RunPhoenixTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestPhoenixTest()
  let spec_line_number = line('.')
  call RunPhoenixTestFile(":" . spec_line_number)
endfunction

" Old tests
" Run only the example under the cursor
" map <leader>tl :call RunNearestPhoenixTest()<cr>
" Run this file
" map <leader>tt :call RunPhoenixTestFile()<cr>
" Run all test files
" map <leader>ta :call RunPhoenixTests('')<cr>

" New tests from vim-test
" Run only the example under the cursor
nmap <silent> <leader>tn :TestNearest<cr>
" Run last visit
nmap <silent> <leader>tl :TestLast<cr>
" Run visit
nmap <silent> <leader>tg :TestVisit<cr>
" Run this file
nmap <silent> <leader>tt :TestFile<cr>
" Run all test files
nmap <silent> <leader>ta :TestSuite<cr>

"""""""""""""""""""""
" vim-test extensions
"""""""""""""""""""""
function! ElixirUmbrellaTransform(cmd) abort
  if match(a:cmd, 'apps/') != -1
    return substitute(a:cmd, 'mix test apps/\([^/]*/\)', 'cd apps/\1 \&\& mix test ', '')
  else
    return a:cmd
  end
endfunction

let g:test#preserve_screen = 0
let g:test#custom_transformations = {'elixir_umbrella': function('ElixirUmbrellaTransform')}
let g:test#transformation = 'elixir_umbrella'


" Run Credo in Project
function! RunPhoenixCredo(filename)
  " Write the file and run tests for the given filename
  :w
  :silent !echo;echo;echo;echo;echo
  exec ":!time mix credo --strict " . a:filename
endfunction

" Run Credo in File
function! RunPhoenixCredoFile(...)
  if a:0
    let command_suffix = a:1
  else
    let command_suffix = ""
  endif

  call SetTestFile()
  call RunPhoenixCredo(t:grb_test_file . command_suffix)
endfunction

" Run Credo in Line
function! RunNearestCredoLine()
  let spec_line_number = line('.')
  call RunPhoenixCredoFile(":" . spec_line_number)
endfunction

" Run only the example under the cursor
map <leader>yl :call RunNearestCredoLine()<cr>
" Run this file
map <leader>yy :call RunPhoenixCredoFile()<cr>
" Run all test files
map <leader>ya :call RunPhoenixCredo('')<cr>

" " Test helpers from Gary Bernhardt's screen cast:
" " https://www.destroyallsoftware.com/screencasts/catalog/file-navigation-in-vim
" " https://www.destroyallsoftware.com/file-navigation-in-vim.html
function! RunTests(filename)
  " Write the file and run tests for the given filename
  :w
  :silent !echo;echo;echo;echo;echo
  exec ":!time bundle exec spring rspec " . a:filename
endfunction

function! ExecuteUmbrellaTest(filename) abort
  exec ":!time mix test " . a:filename
endfunction

function! SetTestFile()
  " Set the spec file that tests will be run for.
  let t:grb_test_file=@%
endfunction

function! RunTestFile(...)
  if a:0
    let command_suffix = a:1
  else
    let command_suffix = ""
  endif

  " Run the tests for the previously-marked file.
  let in_spec_file = match(expand("%"), '_spec.rb$') != -1
  call SetTestFile()
  if in_spec_file
    call SetTestFile()
  elseif !exists("t:grb_test_file")
    return
  end
  call RunTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestTest()
  let spec_line_number = line('.')
  call RunTestFile(":" . spec_line_number)
endfunction

" Run this file
map <leader>rr :call RunTestFile()<cr>
" Run only the example under the cursor
map <leader>rl :call RunNearestTest()<cr>
" Run all test files
map <leader>ra :call RunTests('spec')<cr>

" @Vic Test scripts
" Run Rspec in current file
" function! RSpecRunLineWithSpring()
"   execute("!clear && spring rspec " . expand("%p")) . ":" . line(".") . " -c"
" endfunction

" function! RSpecRunFileWithSpring()
"   execute("!clear && spring rspec " . expand("%p")) . " -c"
" endfunction

" " Run cucumber in current file
" function! CucumberRunLineWithSpring()
"   execute("!clear && spring cucumber " . expand("%p")) . ":" . line(".") . " --format=doc"
" endfunction

" map <Leader>rl :call RSpecRunLineWithSpring()<cr>
" map <Leader>rr :call RSpecRunFileWithSpring()<cr>
" map <Leader>cl :call CucumberRunLineWithSpring()<cr>

set listchars=tab:▸\ ,eol:˫,extends:❯,precedes:❮
" TRAILING WHITESPACES MUST DIE
autocmd BufWritePre * :%s/\s\+$//e

augroup vimrcEX
  autocmd!
  autocmd FileType text setlocal textwidth=78
  "Jump to last cursor position
  autocmd BufReadPost *
        \ if line("'\"") > 0  && line("'\"") <= line ("$") |
        \   exe "normal g'\"" |
        \ endif
augroup END
"Clear the search buffer when hitting return
:nnoremap <CR> :nohlsearch<cr>

"Indent at begining of line, else do completion
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

"Rename file
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'))
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <leader>j :call RenameFile()<cr>

"Promote to Rspec Let
function! PromoteToLet()
  :normal! dd
  :normal! P
  :.s/\(\w\+\) = \(.*\)$/let!(:\1) { \2 }/
  :normal ==
endfunction
:command! PromoteToLet :call PromoteToLet()
map <leader>p :PromoteToLet<cr>
autocmd FileType apache setlocal commentstring=#\ %s

"Command-T ignore
set wildignore=node_modules/**,dist/**,tmp/**,_build/**,builds/**,bower_components/**,deps/**,rel/releases/***

"Read .config files as XML
au BufRead,BufNewFile *.config     set filetype=xml
autocmd BufNewFile,BufRead *.slim set ft=slim

"Trigger JSX syntax for .js files
let g:jsx_ext_required = 0

"Trigger Mustache syntax
let g:mustache_abbreviations = 1
au BufRead,BufNewFile *.hbs     set filetype=mustache

"Trigger .conf files
autocmd BufRead,BufNewFile *.conf setf dosini

"Autocomlete html tags
:set omnifunc=htmlcomplete#CompleteTags

"Easy navigate vim panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
