#> sort_items:_impl/sort_by_count/reverse_ascend
#@within function sort_items:**
#@input storage : _[-1].list[-2]
#@output storage : _[-1].list

data modify storage : _ append value {descend: [[]]}
  scoreboard players set $2 _sort_items 2147483647
  function sort_items:_impl/sort_by_count/_impl/descend/setup
  function sort_items:_impl/sort_by_count/_impl/ascend/

  ## finalize
  ### ascendに入っていた場合は反転してmove
  execute if data storage : _[-1].ascend[0] run function sort_items:_impl/sort_by_count/_impl/descend/return_reverse
  ### descendに入っていた場合はそのままコピー
  execute if data storage : _[-1].descend[0] run data modify storage : _[-2].list set from storage : _[-1].descend[-1]
data remove storage : _[-1]
