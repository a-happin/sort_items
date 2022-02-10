#> sort_items:_impl/count/not_found
#@within function sort_items:_impl/count/

## listをItemsの逆順に保つために最初にlist_cacheを戻す
execute if data storage : _[-1].list_cache[-1] run function sort_items:_impl/count/restore_cache

## count_list.append (Items[-1])
data modify storage : _[-1].list append value {}
data modify storage : _[-1].list[-1].Item set from storage : _[-1].Items[-1]

## count_list[-1].Count = count
execute store result storage : _[-1].list[-1].Count int 1 run scoreboard players get $count _sort_items

## check invalid stack
execute store result score $max_stack_size _sort_items store result storage : _[-1].list[-1].max_stack_size byte 1 run data get storage : _[-1].max_stack_sizes[-1]
## 不正なスタック数のアイテムの個数を保存しておく
execute if score $count _sort_items > $max_stack_size _sort_items run data modify storage : _[-1].list[-1].invalid_counts append value 0b
execute if score $count _sort_items > $max_stack_size _sort_items store result storage : _[-1].list[-1].invalid_counts[-1] byte 1 run scoreboard players get $count _sort_items
