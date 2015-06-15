" The "vimux-zftool" plugin provides you with ZTTool commands
"
" Author:  dsaenztagarro
" URL:     https://github.com/dsaenztagarro/ZTTool.vim
" Version: 0.1
" ----------------------------------------------------------------------------

if exists('g:loaded_zftool') || &cp
  finish
endif
let g:loaded_zftool = 1

" Initializations {{{
let g:zftool_last_module = ''
let g:zftool_last_controller = ''
let g:zftool_last_command = ''
" }}}
" Private functions {{{
function s:input_module_name(last)
  if !a:last
    let name = input('module name: ', g:zftool_last_module)
    let g:zftool_last_module = name
  endif
  return g:zftool_last_module
endfunction!

function s:input_controller_name(last)
  if !a:last
    let name = input('Controller name: ')
    let g:zftool_last_controller = name
  endif
  return g:zftool_last_controller
endfunction!

function s:input_path(last)
  if !a:last
    if !exists('g:zftool_last_path')
      let g:zftool_last_path = getcwd()
    endif
    return input('Path: ', g:zftool_last_path)
  endif
  return g:zftool_last_path
endfunction!
" }}}
" Interface {{{
function! ZFToolCreateProject(last)
  let g:zftool_last_command = "ZTcreatemodule"
  let name = input("Project name: ")
  let path = s:input_path(a:last)
  let cmd = "zf.php create project " . name . " " . path
  call VimuxRunCommand(cmd)
endfunction

function! ZFToolCreateModule(last)
  let g:zftool_last_command = "ZFToolCreateModule"
  let name = s:input_module_name(0)
  let path = s:input_path(a:last)
  let cmd = "zf.php create module " . name . " " . path
  call VimuxRunCommand(cmd)
endfunction

function ZFToolCreateController(last)
  let g:zftool_last_command = "ZFToolCreateController"
  let name = s:input_controller_name(0)
  let module = s:input_module_name(a:last)
  let path = s:input_path(a:last)
  let cmd = "zf.php create controller " . name . " " . module . " " . path
  call VimuxRunCommand(cmd)
endfunction!

function ZFToolCreateAction(last)
  let g:zftool_last_command = "ZFToolCreateAction"
  let name = input("Action name: ")
  let controller = s:input_controller_name(a:last)
  let module = s:input_module_name(a:last)
  let path = s:input_path(a:last)
  let cmd = "zf.php create action " . name . " " . module . " " . path
  call VimuxRunCommand(cmd)
endfunction!

function ZFToolRepeat()
  exec(g:zftool_last_command + "(1)")
endfunction!
" }}}
" Commands {{{
command! ZFToolCreateProject call ZFToolCreateProject(0)
command! ZFToolCreateModule call ZFToolCreateModule(0)
command! ZFToolCreateController call ZFToolController(0)
command! ZFCreateAction call ZFToolCreateAction(0)
command! ZFToolRepeat call ZFToolRepeat(1)
" }}}
