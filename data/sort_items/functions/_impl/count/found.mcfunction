#> sort_items:_impl/count/found
#@within function sort_items:_impl/count/loop

## count += Items[-1].Count
execute store result score $ _sort_items run data get storage : _[-1].list[-1].Count
execute store result storage : _[-1].list[-1].Count int 1 run scoreboard players operation $ _sort_items += $count _sort_items
