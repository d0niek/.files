
" Only do this when not done yet for this buffer
if exists("b:php_ftplugin")
  finish
endif

let b:php_ftplugin = 1

" Plugins setup
"
" syntastic
"
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd', 'phpstan']
let g:syntastic_sh_checkers = ['shellcheck']
"
" END syntastic
"
" END Plugins setup

" Commands
"
command! Ts !vendor/bin/phpunit --testdox %<CR>
command! Ta !vendor/bin/phpunit <CR>
"
" END Commands
