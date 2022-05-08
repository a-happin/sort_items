#> sort_items:_impl/sort/ascend/shift
#@within function sort_items:_impl/sort/ascend/loop

##     if descend[-1][-1] => move_rest      -> remove -> remove
## unless descend[-1][-1] => move_rest(nop) -> remove -> remove -> move_rest

execute if data storage : _[-1].descend[-1][-1] run function sort_items:_impl/sort/ascend/move_rest
data remove storage : _[-1].descend[-1]
data remove storage : _[-1].descend[-1]
execute if score $1 _sort_items <= $2 _sort_items if data storage : _[-1].descend[-1][-1] run function sort_items:_impl/sort/ascend/move_rest

## まだ要素が残っていたらappend
execute if data storage : _[-1].descend[0][-1] run data modify storage : _[-1].ascend append value []
