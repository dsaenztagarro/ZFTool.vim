" --------------------------------
" Add our plugin to the path
" --------------------------------
python import sys
python import vim
python sys.path.append(vim.eval('expand("<sfile>:h")'))

" --------------------------------
"  Function(s)
" --------------------------------
function! ZFCreateModule(name)
python << endOfPython

from zftool import CreateModuleCommand

name = vim.eval("a:name")
result = CreateModuleCommand().runWith(name)
print(result)

endOfPython
endfunction

" --------------------------------
"  Expose our commands to the user
" --------------------------------
command! -nargs=1 ZFModule call ZFCreateModule(<f-args>)
