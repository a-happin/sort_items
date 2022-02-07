#> sort_items:_impl/sort_by_count/_impl/descend/return_reverse
#@within
#  function sort_items:_impl/sort_by_count/_impl/descend/return_reverse
#  function sort_items:_impl/sort_by_count/descend
#  function sort_items:_impl/sort_by_count/reverse_ascend

data modify storage : _[-2].list append from storage : _[-1].ascend[-1][-1]
data remove storage : _[-1].ascend[-1][-1]
execute if data storage : _[-1].ascend[-1][-1] run function sort_items:_impl/sort_by_count/_impl/descend/return_reverse
