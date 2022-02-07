#> sort_items:_impl/sort_by_count/_impl/ascend/return_reverse
#@within
#  function sort_items:_impl/sort_by_count/_impl/ascend/return_reverse
#  function sort_items:_impl/sort_by_count/ascend
#  function sort_items:_impl/sort_by_count/reverse_descend

data modify storage : _[-2].list append from storage : _[-1].descend[-1][-1]
data remove storage : _[-1].descend[-1][-1]
execute if data storage : _[-1].descend[-1][-1] run function sort_items:_impl/sort_by_count/_impl/ascend/return_reverse
