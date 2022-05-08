#> sort_items:_impl/sort/descend/setup
#@within
#  function sort_items:_impl/sort/descend/setup
#  function sort_items:_impl/sort/*ascend

## descendに降順になるように移動
execute store result score $1 _sort_items run data get storage : _[-2].list[-1]
execute if score $1 _sort_items > $2 _sort_items run data modify storage : _[-1].descend append value []
data modify storage : _[-1].descend[-1] append from storage : _[-2].list[-1]
data remove storage : _[-2].list[-1]
scoreboard players operation $2 _sort_items = $1 _sort_items
execute if data storage : _[-2].list[-1] run function sort_items:_impl/sort/descend/setup
