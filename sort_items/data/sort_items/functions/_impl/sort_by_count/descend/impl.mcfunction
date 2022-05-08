#> sort_items:_impl/sort_by_count/descend/impl
#@within
#  function sort_items:_impl/sort_by_count/ascend/impl
#  function sort_items:_impl/sort_by_count/*descend

## ascend[-1]とascend[-2]をmergeしてdescend[-1]に移動
### while ascend.size >= 2
function sort_items:_impl/sort_by_count/descend/loop
### if ascend.size == 1
execute if data storage : _[-1].ascend[-1][-1] run function sort_items:_impl/sort_by_count/descend/move_rest
### if ascend == [] => ascend = [[]]
execute unless data storage : _[-1].ascend[-1] run data modify storage : _[-1].ascend append value []

execute if data storage : _[-1].descend[-2] run function sort_items:_impl/sort_by_count/ascend/impl
