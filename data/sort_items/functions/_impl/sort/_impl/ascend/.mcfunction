#> sort_items:_impl/sort/_impl/ascend/
#@within
#  function sort_items:_impl/sort/_impl/descend/
#  function sort_items:_impl/sort/*ascend

## descend[-1]とdescend[-2]をmergeしてascend[-1]に移動
### initialize
data modify storage : _[-1].ascend set value [[]]
### while descend.size >= 2
function sort_items:_impl/sort/_impl/ascend/loop
### if descend.size == 1
execute if data storage : _[-1].descend[-1][-1] run function sort_items:_impl/sort/_impl/ascend/move_rest

execute if data storage : _[-1].ascend[-2] run function sort_items:_impl/sort/_impl/descend/
