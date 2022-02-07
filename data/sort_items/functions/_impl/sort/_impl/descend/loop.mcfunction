#> sort_items:_impl/sort/_impl/descend/loop
#@within
#  function sort_items:_impl/sort/_impl/descend/
#  function sort_items:_impl/sort/_impl/descend/loop

## get
execute store result score $1 _sort_items run data get storage : _[-1].ascend[-1][-1]
execute store result score $2 _sort_items run data get storage : _[-1].ascend[-2][-1]

## append dummy
execute if score $1 _sort_items >= $2 _sort_items run data modify storage : _[-1].ascend append value []
  ## move
  data modify storage : _[-1].descend[-1] append from storage : _[-1].ascend[-2][-1]
  data remove storage : _[-1].ascend[-2][-1]

  ## is_empty => shift
  execute unless data storage : _[-1].ascend[-2][-1] run function sort_items:_impl/sort/_impl/descend/shift
execute if score $1 _sort_items >= $2 _sort_items run data remove storage : _[-1].ascend[-1]

## while ascend.size >= 2
execute if data storage : _[-1].ascend[-2] run function sort_items:_impl/sort/_impl/descend/loop
