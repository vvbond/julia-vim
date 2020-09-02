setlocal foldmethod=expr
setlocal foldexpr=GetSectionFold(v:lnum)

function! GetSectionFold(lnum)
  let this_line = getline(a:lnum)

  if this_line =~? '^##'
    return ">1"
  elseif this_line =~ '^#%%'
    return ">2" 
  endif
  return "="
endfunction

