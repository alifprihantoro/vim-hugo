function! Hugotitletoslug()
    normal gg
    exe '/^title'
    normal! vi"y
    exe '/^slug'
    normal! I
    normal! "_Dislug:
    normal! A
    normal! p
    exe ':s/ /-/g'
    exe 'normal! f-r'
    normal! Vu
    normal! I
    normal! eea 
endfun
