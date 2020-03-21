
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

" Insert getter and setter at the end of class
let @g="^mf?var\<Enter>WviwyGO\<Enter>/**\<Enter>kA@return \<Esc>pGOpublic function get(): \<Esc>po{\<Enter>}\<Enter>\<Enter>/**\<Enter>kA@param \<Esc>po*\<Enter>* @return self\<Esc>GOpublic function set(\<Esc>pA): self\<Enter>{\<Enter>}\<Esc>'fWwviwyG?get\<Enter>epblllvUjoreturn $this->\<Esc>pA;\<Esc>/param\<Enter>A $\<Esc>p/set\<Enter>epblllvUEhi $\<Esc>pjo$this->\<Esc>pA = $\<Esc>pA;\<Enter>\<Enter>return $this;\<Esc>:noh\<Enter>'f"
