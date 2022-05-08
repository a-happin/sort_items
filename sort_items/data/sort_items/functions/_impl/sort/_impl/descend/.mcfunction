#> sort_items:_impl/sort/_impl/descend/
#@within
#  function sort_items:_impl/sort/_impl/ascend/
#  function sort_items:_impl/sort/*descend

## ascend[-1]とascend[-2]をmergeしてdescend[-1]に移動
### initialize
data modify storage : _[-1].descend set value [[]]
### while ascend.size >= 2
function sort_items:_impl/sort/_impl/descend/loop
### if ascend.size == 1
execute if data storage : _[-1].ascend[-1][-1] run function sort_items:_impl/sort/_impl/descend/move_rest

execute if data storage : _[-1].descend[-2] run function sort_items:_impl/sort/_impl/ascend/
