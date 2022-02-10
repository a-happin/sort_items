#> sort_items:_impl/count/found
#@within function sort_items:_impl/count/loop

## count += Items[-1].Count
execute store result score $ _sort_items run data get storage : _[-1].list[-1].Count
execute store result storage : _[-1].list[-1].Count int 1 run scoreboard players operation $ _sort_items += $count _sort_items

## check invalid stack
execute store result score $max_stack_size _sort_items run data get storage : _[-1].max_stack_sizes[-1]
## 不正なスタック数のアイテムの個数を保存しておく
execute if score $count _sort_items > $max_stack_size _sort_items run data modify storage : _[-1].list[-1].invalid_counts append value 0b
execute if score $count _sort_items > $max_stack_size _sort_items store result storage : _[-1].list[-1].invalid_counts[-1] byte 1 run scoreboard players get $count _sort_items

## list_cacheを戻す
execute if data storage : _[-1].list_cache[-1] run function sort_items:_impl/count/restore_cache
