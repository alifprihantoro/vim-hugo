function Hugogobrowser()
  let hosthugo='http://localhost:1313/'
  exe '/slug.*'
  normal gny
  let Slug=@"
  let Slug=substitute(Slug,"slug: ","","")
  " echo Slug
  let FolderTypeHugo=expand('%:p')
  let FolderTypeHugo=substitute(FolderTypeHugo,".*content/","","")
  let FolderTypeHugo=substitute(FolderTypeHugo,"/.*","","")
  " echo FolderTypeHugo
  let linkhugo=hosthugo.FolderTypeHugo.'/'.Slug
  " change termux open with open if you not use termux
  exec "!termux-open-url '".linkhugo."'"
endfunction
