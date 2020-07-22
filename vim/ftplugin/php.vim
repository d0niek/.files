
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

function! FindPhpUnitConfig(testfile)
    let pathArray = split(a:testfile, '/')
    let pathArray = pathArray[:len(pathArray) - 2]

    while !empty(pathArray)
        let path = join(pathArray, '/')
        let configFile = path . '/phpunit.xml'

        if filereadable(configFile)
           return configFile
        endif

        let configFile .= '.dist'

        if filereadable(configFile)
           return configFile
        endif

        let pathArray = pathArray[:len(pathArray) - 2]
    endwhile

    return ''
endfunction

function! RunPhpUnit(testfile, options, context)
    let config = FindPhpUnitConfig(a:context)

    if config != ''
        let config = ' -c ' . config
    endif

    execute '!vendor/bin/phpunit' a:options config a:testfile
endfunction

function! RunPhpUnitForFile(fileName)
    let fileName = a:fileName
    let fileNameLength = len(fileName)
    let testSufixLength = len('Test.php')
    let fileSufix = fileName[fileNameLength - testSufixLength:fileNameLength]

    if fileSufix != 'Test.php'
        let fileName = substitute(fileName, '/src/', '/tests/', '')
        let fileName = substitute(fileName, '.php', 'Test.php', '')

        if !filereadable(fileName)
            echo "Test not found"
            return
        endif
    endif

    call RunPhpUnit(fileName, '--testdox', fileName)
endfunction

" Commands
"
command! TestRunAll call RunPhpUnit('', '', @%)
command! TestRunOne call RunPhpUnitForFile(@%)
"
" END Commands

" Insert getter and setter at the end of class
let @g="^mf?var\<Enter>WviwyGO\<Enter>/**\<Enter>kA@return \<Esc>pGOpublic function get(): \<Esc>po{\<Enter>}\<Enter>\<Enter>/**\<Enter>kA@param \<Esc>po*\<Enter>* @return self\<Esc>GOpublic function set(\<Esc>pA): self\<Enter>{\<Enter>}\<Esc>'fWwviwyG?get\<Enter>epblllvUjoreturn $this->\<Esc>pA;\<Esc>/param\<Enter>A $\<Esc>p/set\<Enter>epblllvUEhi $\<Esc>pjo$this->\<Esc>pA = $\<Esc>pA;\<Enter>\<Enter>return $this;\<Esc>:noh\<Enter>'f"
