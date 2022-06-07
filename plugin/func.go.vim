function Hugolinkgofile()
  exe "let dirNow=getcwd()"
  exe 'Cdg'
  " get link
  " e content/.link
  execute "cd ".dirNow
endfunction
function Hugolinkgobrowser()
  echo hai
  " get link
  " browse(use termux-api) link
endfunction

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
