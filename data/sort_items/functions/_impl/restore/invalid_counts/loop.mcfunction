#> sort_items:_impl/restore/invalid_counts/loop
#@within
#  function sort_items:_impl/restore/invalid_counts/
#  function sort_items:_impl/restore/invalid_counts/loop

## Items.append (list[-1].Item)
data modify storage : _[-2].Items append from storage : _[-2].list[-1].Item

## count -= Items[-1].Count = invalid_counts[-1]
execute store result score $ _sort_items store result storage : _[-2].Items[-1].Count byte 1 run data get storage : _[-1].list[-1]
scoreboard players operation $count _sort_items -= $ _sort_items

data remove storage : _[-1].list[-1]
execute if data storage : _[-1].list[-1] run function sort_items:_impl/restore/invalid_counts/loop
