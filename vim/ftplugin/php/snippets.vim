
" Only do this when not done yet for this buffer
if exists("b:php_ftplugin_snippets")
  finish
endif

let b:php_ftplugin_snippets = 1

abbr author /**<CR> * @author<CR>*/<esc>kA

abbr class
    \ class name<CR>
    \{<CR>
    \}<esc>2kw

abbr classf
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

abbr /**
    \ /**<CR>
    \ * <CR>
    \*/<esc>k$

abbr interface
    \ interface name<CR>
    \{<CR>
    \}<esc>2kw

abbr interfacef
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

abbr phps
    \ <?php<CR>
    \declare(strict_types=1);<CR><CR><esc>

abbr trait
    \ trait name<CR>
    \{<CR>
    \}<esc>2kw

abbr traitf
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

abbr testcase
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

abbr unitest
    \ public function testFoo(): void<CR>
    \{<CR>
    \}<esc>2k3e2h
