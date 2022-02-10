#> sort_items:_impl/restore/
# restore Items from list
#@within function sort_items:**


execute store result score $ _sort_items store result score $count _sort_items run data get storage : _[-1].list[-1].Count
execute store result score $max_stack_size _sort_items run data get storage : _[-1].list[-1].max_stack_size

## 不正なスタック数のアイテムがあれば先にrestoreする
execute if data storage : _[-1].list[-1].invalid_counts[-1] run function sort_items:_impl/restore/invalid_counts/

## while count >= 1
function sort_items:_impl/restore/loop

data remove storage : _[-1].list[-1]
execute if data storage : _[-1].list[-1] run function sort_items:_impl/restore/
