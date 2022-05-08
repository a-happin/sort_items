#> sort_items:_impl/sort_by_count/_impl/ascend/move_rest
#@within
#  function sort_items:_impl/sort_by_count/_impl/ascend/move_rest
#  function sort_items:_impl/sort_by_count/_impl/ascend/shift
#  function sort_items:_impl/sort_by_count/_impl/ascend/

data modify storage : _[-1].ascend[-1] append from storage : _[-1].descend[-1][-1]
data remove storage : _[-1].descend[-1][-1]
execute if data storage : _[-1].descend[-1][-1] run function sort_items:_impl/sort_by_count/_impl/ascend/move_rest
