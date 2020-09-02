setlocal foldmethod=expr
setlocal foldexpr=GetSectionFold(v:lnum)

function GetSectionFold(lnum)
  if getline(a:lnum) =~? '^##'
    return '1'
  endif
  return '-1'
endfunction

