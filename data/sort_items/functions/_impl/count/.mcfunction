#> sort_items:_impl/count/
#@within
#  function sort_items:**

execute store result score $count _sort_items run data get storage : _[-1].Items[-1].Count
execute store result score $updated _sort_items run data remove storage : _[-1].Items[-1].Count

execute if data storage : _[-1].list[-1] run function sort_items:_impl/count/loop
execute if score $updated _sort_items matches 1 unless data storage : _[-1].list[-1] run function sort_items:_impl/count/not_found

## check invalid stack
execute store result score $max_stack_size _sort_items run data get storage : _[-1].Items[-1].max_stack_size
## 不正なスタック数のアイテムの個数を保存しておく
execute if score $count _sort_items > $max_stack_size _sort_items run data modify storage : _[-1].list[-1].invalid_counts append value 0b
execute if score $count _sort_items > $max_stack_size _sort_items store result storage : _[-1].list[-1].invalid_counts[-1] byte 1 run scoreboard players get $count _sort_items

data remove storage : _[-1].Items[-1]

## list_cacheを戻す
execute if data storage : _[-1].list_cache[-1] run function sort_items:_impl/count/restore_cache

execute if data storage : _[-1].Items[-1] run function sort_items:_impl/count/
