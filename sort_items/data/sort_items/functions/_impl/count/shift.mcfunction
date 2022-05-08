#> sort_items:_impl/count/shift
#@within function sort_items:_impl/count/loop

data modify storage : _[-1].list_cache append from storage : _[-1].list[-1]
data remove storage : _[-1].list[-1]
execute if data storage : _[-1].list[-1] run function sort_items:_impl/count/loop
