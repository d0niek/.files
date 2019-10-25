
" Tabs settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Display line number and toggle with 2x Ctrl+n
set number
map <C-N><C-N> :set invnumber<CR>

set cursorline

" Disable the arrow keys!
map <up>    <nop>
map <down>  <nop>
map <left>  <nop>
map <right> <nop>
imap <up>    <nop>
imap <down>  <nop>
imap <left>  <nop>
imap <right> <nop>

" Remove trailing whitespace after save :w
autocmd BufWritePre * %s/\s\+$//e

" Setup maring
set colorcolumn=81
set nowrap

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  set backupdir=~/.vim/backup//

  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
    set undodir=~/.vim/undo//
  endif
endif

set hlsearch

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

map bn :bn<CR>
map bN :bp<CR>


" airline
"
let g:airline_theme = 'violet'
" Remember to install powerline-status
"     pip install powerline-status
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
"
" END airline


" syntastic
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 5
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"
" END syntastic


" Files type settings
"
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd', 'phpstan']
let g:syntastic_sh_checkers = ['shellcheck']
"
" END Files type settings
