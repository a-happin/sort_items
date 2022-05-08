#> sort_items:_impl/sort/_impl/descend/shift
#@within function sort_items:_impl/sort/_impl/descend/loop

##     if ascend[-1][-1] => move_rest      -> remove -> remove
## unless ascend[-1][-1] => move_rest(nop) -> remove -> remove -> move_rest

execute if data storage : _[-1].ascend[-1][-1] run function sort_items:_impl/sort/_impl/descend/move_rest
data remove storage : _[-1].ascend[-1]
data remove storage : _[-1].ascend[-1]
execute if score $1 _sort_items >= $2 _sort_items if data storage : _[-1].ascend[-1][-1] run function sort_items:_impl/sort/_impl/descend/move_rest

## まだ要素が残っていたらappend
execute if data storage : _[-1].ascend[0][-1] run data modify storage : _[-1].descend append value []
