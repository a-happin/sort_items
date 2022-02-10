#> sort_items:_impl/count/restore_cache
#@within
#  function sort_items:_impl/count/found
#  function sort_items:_impl/count/not_found
#  function sort_items:_impl/count/restore_cache

data modify storage : _[-1].list append from storage : _[-1].list_cache[-1]
data remove storage : _[-1].list_cache[-1]
execute if data storage : _[-1].list_cache[-1] run function sort_items:_impl/count/restore_cache
