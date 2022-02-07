#> sort_items:_impl/sort/_impl/descend/setup
#@within
#  function sort_items:_impl/sort/_impl/descend/setup
#  function sort_items:_impl/sort/*ascend

# descendに降順になるように移動
# example:
#  list = [15, 20, 3, 50, 21, 5, 33, 86, 1, 9]
# descend = [[9, 1], [86, 33, 5], [21], [50, 3], [20, 15]]

execute store result score $1 _sort_items run data get storage : _[-2].list[-1]
execute if score $1 _sort_items > $2 _sort_items run data modify storage : _[-1].descend append value []
data modify storage : _[-1].descend[-1] append from storage : _[-2].list[-1]
data remove storage : _[-2].list[-1]
scoreboard players operation $2 _sort_items = $1 _sort_items
execute if data storage : _[-2].list[-1] run function sort_items:_impl/sort/_impl/descend/setup
