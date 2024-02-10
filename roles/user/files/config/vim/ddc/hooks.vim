" hook_add {{{
call ddc#custom#patch_global(#{
  \   ui: 'native',
  \   sources: [
  \     'around',
  \     'lsp',
  \     'skkeleton',
  \   ],
  \   sourceOptions: #{
  \     _: #{
  \       matchers: [
  \         'matcher_head',
  \       ],
  \       sorters: [
  \         'sorter_rank',
  \       ],
  \     },
  \     arround: #{
  \       mark: 'A',
  \     },
  \     lsp: #{
  \       mark: 'L',
  \       forceCompletionPattern: '\.\w*|:\w*|->\w*',
  \       sorters: ['sorter_lsp-kind'],
  \     },
  \     skkeleton: #{
  \       mark: 'J',
  \       matchers: [],
  \       sorters: [],
  \       converters: [],
  \       isVolatile: v:true,
  \       minAutoCompleteLength: 1,
  \     },
  \   },
  \   sourceParams: #{
  \     lsp: #{
  \       snippetEngine: denops#callback#register({
  \         body -> vsnip#anonymous(body)
  \       }),
  \       lspEngine: "vim-lsp",
  \     },
  \   },
  \ })
call ddc#enable()
" }}}
" hook_source {{{
" }}}
