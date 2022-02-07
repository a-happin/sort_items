#> sort_items:_impl/restore/loop
#@within
#  function sort_items:_impl/restore/
#  function sort_items:_impl/restore/loop

## Items.append (list[-1].Item)
data modify storage : _[-1].Items append from storage : _[-1].list[-1].Item

## Items[-1].Count = min (count, max_stack_size)
execute store result storage : _[-1].Items[-1].Count byte 1 run scoreboard players operation $ _sort_items < $max_stack_size _sort_items

## count -= max_stack_size
execute store result score $ _sort_items run scoreboard players operation $count _sort_items -= $max_stack_size _sort_items

## while count >= 1
execute if score $count _sort_items matches 1.. run function sort_items:_impl/restore/loop
