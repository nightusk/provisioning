" hook_add {{{
call ddc#custom#patch_global(#{
  \   ui: 'native',
  \   sources: [
  \     'around',
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
  \     skkeleton: #{
  \       mark: 'J',
  \       matchers: [],
  \       sorters: [],
  \       converters: [],
  \       isVolatile: v:true,
  \       minAutoCompleteLength: 1,
  \     },
  \   },
  \ })
call ddc#enable()
" }}}
" hook_source {{{
" }}}
