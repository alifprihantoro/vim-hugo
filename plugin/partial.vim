function! Hugogo()
  normal %v%y
  let Hugofile=@"
  exe 'let Hugofile=substitute(Hugofile,"\"","","g")'
  let Hugofile=substitute(Hugofile,"{","","g")
  let Hugofile=substitute(Hugofile,"partial","","")
  let Hugofile=substitute(Hugofile,"\\.","","g")
  let Hugofile=substitute(Hugofile,"html","","g")
  let Hugofile=substitute(Hugofile,"}","","g")
  let Hugofile=substitute(Hugofile," ","","g")
  " echo Hugofile
  exe 'Cdg'
  exe 'e layouts/partials/'.Hugofile.'.html'
endfun  
