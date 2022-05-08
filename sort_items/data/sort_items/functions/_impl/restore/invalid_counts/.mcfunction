#> sort_items:_impl/restore/invalid_counts/
#@within function sort_items:_impl/restore/

data modify storage : _ append value {}
  data modify storage : _[-1].list set from storage : _[-2].list[-1].invalid_counts
  execute if data storage : _[-1].list[-2] run function sort_items:_impl/sort/ascend
  execute if data storage : _[-1].list[-1] run function sort_items:_impl/restore/invalid_counts/loop
  scoreboard players operation $ _sort_items = $count _sort_items
data remove storage : _[-1]
