" hook_add {{{
autocmd FileType ddu-ff call s:ddu_ff_my_settings()

function s:ddu_ff_my_settings() abort
  nnoremap <buffer> <CR>
  \ <Cmd>call ddu#ui#do_action('itemAction')<CR>
  nnoremap <buffer> <Space>
  \ <Cmd>call ddu#ui#do_action('toggleSelectItem')<CR>
  nnoremap <buffer> i
  \ <Cmd>call ddu#ui#do_action('openFilterWindow')<CR>
  nnoremap <buffer> q
  \ <Cmd>call ddu#ui#do_action('quit')<CR>
endfunction

autocmd FileType ddu-ff-filter call s:ddu_ff_filter_my_settings()
function s:ddu_ff_filter_my_settings() abort
  inoremap <buffer> <CR>
  \ <Esc><Cmd>call ddu#ui#do_action('closeFilterWindow')<CR>
  nnoremap <buffer> <CR>
  \ <Cmd>call ddu#ui#do_action('closeFilterWindow')<CR>
endfunction

call ddu#custom#patch_global(#{
  \   ui: 'ff',
  \   uiParams: #{
  \     ff: #{
  \       startFilter: v:true
  \     },
  \   },
  \   sources: [
  \     #{ name: 'file_rec', params: {}},
  \   ],
  \   sourceOptions: #{
  \     _: #{
  \       matchers: ['matcher_substring'],
  \     },
  \   },
  \   sourceParams: #{
  \     rg: #{
  \       args: [
  \         '--column',
  \         '--no-heading',
  \         '--color',
  \         'never',
  \       ],
  \     },
  \   },
  \   kindOptions: #{
  \     file: #{
  \       defaultAction: 'open',
  \     },
  \   },
  \ })
" }}}
