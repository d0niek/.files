
" Only do this when not done yet for this buffer
if exists("b:php_ftplugin_snippets")
  finish
endif

let b:php_ftplugin_snippets = 1

iabbrev author /**<CR> * @author<CR>*/<esc>kA

iabbrev class
    \ class name<CR>
    \{<CR>
    \}<esc>2kw

iabbrev classf
    \ <?php<CR>
    \declare(strict_types=1);<CR>
    \<CR>
    \namespace ;<CR>
    \<CR>
    \/**<CR>
    \ * @author<CR>
    \*/<CR>
    \<esc>Iclass name<CR>
    \{<CR>
    \}<esc>4gg$

iabbrev /**
    \ /**<CR>
    \ * <CR>
    \*/<esc>k$

iabbrev interface
    \ interface name<CR>
    \{<CR>
    \}<esc>2kw

iabbrev interfacef
    \ <?php<CR>
    \declare(strict_types=1);<CR>
    \<CR>namespace ;<CR>
    \<CR>
    \/**<CR>
    \ * @author<CR>
    \*/<CR>
    \<esc>Iinterface name<CR>
    \{<CR>
    \}<esc>4gg$

iabbrev phps
    \ <?php<CR>
    \declare(strict_types=1);<CR><CR><esc>

iabbrev trait
    \ trait name<CR>
    \{<CR>
    \}<esc>2kw

iabbrev traitf
    \ <?php<CR>
    \declare(strict_types=1);<CR>
    \<CR>
    \namespace ;<CR>
    \<CR>
    \/**<CR>
    \ * @author<CR>
    \*/<CR>
    \<esc>Itrait name<CR>
    \{<CR>
    \}<esc>4gg$

iabbrev testcase
    \ <?php<CR>
    \declare(strict_types=1);<CR>
    \<CR>
    \namespace Tests;<CR>
    \<CR>
    \use PHPUnit\Framework\TestCase;<CR>
    \<CR>
    \/**<CR>
    \ * @covers<CR>
    \*/<CR>
    \<esc>Ifinal class nameTest extends TestCase<CR>
    \{<CR>
    \}<esc>4ggw

iabbrev unitest
    \ public function testFoo(): void<CR>
    \{<CR>
    \}<esc>2k3e2h
