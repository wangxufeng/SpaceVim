"=============================================================================
" LanguageClient-neovim.vim
" Copyright (c) 2012-2016 Shidong Wang & Contributors
" Author: Seong Yong-ju <sei40kr@gmail.com>
" URL: https://spacevim.org
" License: MIT license
"=============================================================================

let g:LanguageClient_autoStart = 1

let g:LanguageClient_diagnosticsDisplay = {
      \ 1: {
      \ 'name': 'Error',
      \ 'signText': g:spacevim_error_symbol,
      \ },
      \ 2: {
      \ 'name': 'Warning',
      \ 'signText': g:spacevim_warning_symbol,
      \ },
      \ 3: {
      \ 'name': 'Information',
      \ 'signText': g:spacevim_info_symbol,
      \ },
      \ 4: {
      \ 'name': 'Hint',
      \ 'signText': g:spacevim_info_symbol,
      \ },
      \ }

if g:spacevim_enable_neomake
  let g:LanguageClient_diagnosticsDisplay[1].texthl = 'NeomakeError'
  let g:LanguageClient_diagnosticsDisplay[1].signTexthl = 'NeomakeErrorSign'

  let g:LanguageClient_diagnosticsDisplay[2].texthl = 'NeomakeWarning'
  let g:LanguageClient_diagnosticsDisplay[2].signTexthl = 
        \ 'NeomakeWarningSign'

  let g:LanguageClient_diagnosticsDisplay[3].texthl = 'NeomakeInfo'
  let g:LanguageClient_diagnosticsDisplay[3].signTexthl = 'NeomakeInfoSign'

  let g:LanguageClient_diagnosticsDisplay[4].texthl = 'NeomakeMessage'
  let g:LanguageClient_diagnosticsDisplay[4].signTexthl = 
        \ 'NeomakeMessageSign'
elseif g:spacevim_enable_ale
  let g:LanguageClient_diagnosticsDisplay[1].texthl = 'ALEError'
  let g:LanguageClient_diagnosticsDisplay[1].signTexthl = 'ALEErrorSign'

  let g:LanguageClient_diagnosticsDisplay[2].texthl = 'ALEWarning'
  let g:LanguageClient_diagnosticsDisplay[2].signTexthl = 'ALEWarningSign'

  let g:LanguageClient_diagnosticsDisplay[3].texthl = 'ALEInfo'
  let g:LanguageClient_diagnosticsDisplay[3].signTexthl = 'ALEInfoSign'

  let g:LanguageClient_diagnosticsDisplay[4].texthl = 'ALEInfo'
  let g:LanguageClient_diagnosticsDisplay[4].signTexthl = 'ALEInfoSign'
endif
