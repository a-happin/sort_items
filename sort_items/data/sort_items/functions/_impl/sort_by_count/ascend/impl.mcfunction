#> sort_items:_impl/sort_by_count/ascend/impl
#@within
#  function sort_items:_impl/sort_by_count/descend/impl
#  function sort_items:_impl/sort_by_count/*ascend

## descend[-1]とdescend[-2]をmergeしてascend[-1]に移動
### while descend.size >= 2
function sort_items:_impl/sort_by_count/ascend/loop
### if descend.size == 1
execute if data storage : _[-1].descend[-1][-1] run function sort_items:_impl/sort_by_count/ascend/move_rest
### if descend == [] => descend = [[]]
execute unless data storage : _[-1].descend[-1] run data modify storage : _[-1].descend append value []

execute if data storage : _[-1].ascend[-2] run function sort_items:_impl/sort_by_count/descend/impl
