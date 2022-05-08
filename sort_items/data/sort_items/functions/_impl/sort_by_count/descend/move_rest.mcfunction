#> sort_items:_impl/sort_by_count/descend/move_rest
#@within
#  function sort_items:_impl/sort_by_count/descend/move_rest
#  function sort_items:_impl/sort_by_count/descend/shift
#  function sort_items:_impl/sort_by_count/descend/impl
#  function sort_items:_impl/sort_by_count/descend
#  function sort_items:_impl/sort_by_count/reverse_ascend

data modify storage : _[-1].descend[-1] append from storage : _[-1].ascend[-1][-1]
data remove storage : _[-1].ascend[-1][-1]
execute if data storage : _[-1].ascend[-1][-1] run function sort_items:_impl/sort_by_count/descend/move_rest
