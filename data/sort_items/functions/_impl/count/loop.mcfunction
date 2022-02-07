#> sort_items:_impl/count/loop
#@within
#  function sort_items:_impl/count/
#  function sort_items:_impl/count/shift

data modify storage : _[-1].tmp set from storage : _[-1].list[-1].Item

execute store result score $updated _sort_items run data modify storage : _[-1].tmp set from storage : _[-1].Items[-1]
execute if score $updated _sort_items matches 0 run function sort_items:_impl/count/found
execute if score $updated _sort_items matches 1 run function sort_items:_impl/count/shift
