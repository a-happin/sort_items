#> sort_items:_impl/sort_by_count/ascend/loop
#@within
#  function sort_items:_impl/sort_by_count/ascend/loop
#  function sort_items:_impl/sort_by_count/ascend/impl

## get
execute store result score $1 _sort_items run data get storage : _[-1].descend[-1][-1].Count
execute store result score $2 _sort_items run data get storage : _[-1].descend[-2][-1].Count

## append dummy
execute if score $1 _sort_items <= $2 _sort_items run data modify storage : _[-1].descend append value []
  ## move
  data modify storage : _[-1].ascend[-1] append from storage : _[-1].descend[-2][-1]
  data remove storage : _[-1].descend[-2][-1]

  ## if descend[-2] == [] => shift
  execute unless data storage : _[-1].descend[-2][-1] run function sort_items:_impl/sort_by_count/ascend/shift
execute if score $1 _sort_items <= $2 _sort_items run data remove storage : _[-1].descend[-1]

## while descend.size >= 2
execute if data storage : _[-1].descend[-2] run function sort_items:_impl/sort_by_count/ascend/loop
