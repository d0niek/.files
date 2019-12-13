" HereDoc
syn region phpHereDoc matchgroup=Delimiter start="\(<<<\)\@<=\(\"\=\)\z(\I\i*\)\2$" end="\z1.*" contained contains=phpIdentifier,phpIdentifierSimply,phpIdentifierComplex,phpBackslashSequences,phpMethodsVar,@Spell keepend extend
" including HTML,JavaScript,SQL even if not enabled via options
syn region phpHereDoc matchgroup=Delimiter start="\(<<<\)\@<=\(\"\=\)\z(\(\I\i*\)\=\(html\)\c\(\i*\)\)\2$" end="\z1.*" contained contains=@htmlTop,phpIdentifier,phpIdentifierSimply,phpIdentifierComplex,phpBackslashSequences,phpMethodsVar,@Spell keepend extend
syn region phpHereDoc matchgroup=Delimiter start="\(<<<\)\@<=\(\"\=\)\z(\(\I\i*\)\=\(sql\)\c\(\i*\)\)\2$" end="\z1.*" contained contains=@sqlTop,phpIdentifier,phpIdentifierSimply,phpIdentifierComplex,phpBackslashSequences,phpMethodsVar,@Spell keepend extend
syn region phpHereDoc matchgroup=Delimiter start="\(<<<\)\@<=\(\"\=\)\z(\(\I\i*\)\=\(javascript\)\c\(\i*\)\)\2$" end="\z1.*" contained contains=@htmlJavascript,phpIdentifierSimply,phpIdentifier,phpIdentifierComplex,phpBackslashSequences,phpMethodsVar,@Spell keepend extend

" NowDoc
syn region phpNowDoc matchgroup=Delimiter start="\(<<<\)\@<='\z(\I\i*\)'$" end="\z1\(;\=$\)\@=" contained contains=@Spell keepend extend
" including HTML,JavaScript,SQL even if not enabled via options
syn region phpNowDoc matchgroup=Delimiter start="\(<<<\)\@<='\z(\(\I\i*\)\=\(html\)\c\(\i*\)\)'$" end="\z1.*" contained contains=@htmlTop,@Spell keepend extend
syn region phpNowDoc matchgroup=Delimiter start="\(<<<\)\@<='\z(\(\I\i*\)\=\(sql\)\c\(\i*\)\)'$" end="\z1.*" contained contains=@sqlTop,@Spell keepend extend
syn region phpNowDoc matchgroup=Delimiter start="\(<<<\)\@<='\z(\(\I\i*\)\=\(javascript\)\c\(\i*\)\)'$" end="\z1.*" contained contains=@htmlJavascript,@Spell keepend extend
syn case ignore
