function! Hugogo()
  " get partial
  normal %v%y
  " extract
  let Hugofile=@"
  let Hugofile=substitute(Hugofile,'{.*l "',"","")
  let Hugofile=substitute(Hugofile,'\".*}',"","g")
  " echo Hugofile
  " get folder layouts
  let FolderTheme=getcwd()
  let FolderTheme=substitute(FolderTheme,"layouts.*","layouts","")
  " echo FolderTheme
  " goto partial
  exe 'e '.FolderTheme.'/partials/'.Hugofile
endfun  
