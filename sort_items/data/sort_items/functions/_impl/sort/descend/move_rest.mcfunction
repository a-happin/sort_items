#> sort_items:_impl/sort/descend/move_rest
#@within
#  function sort_items:_impl/sort/descend/move_rest
#  function sort_items:_impl/sort/descend/shift
#  function sort_items:_impl/sort/descend/impl
#  function sort_items:_impl/sort/descend
#  function sort_items:_impl/sort/reverse_ascend

data modify storage : _[-1].descend[-1] append from storage : _[-1].ascend[-1][-1]
data remove storage : _[-1].ascend[-1][-1]
execute if data storage : _[-1].ascend[-1][-1] run function sort_items:_impl/sort/descend/move_rest
